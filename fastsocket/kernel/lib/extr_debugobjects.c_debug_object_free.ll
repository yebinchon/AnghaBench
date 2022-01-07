; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_debug_object_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_debug_object_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32, i32 }

@debug_objects_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_free(i8* %0, %struct.debug_obj_descr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debug_obj_descr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_bucket*, align 8
  %7 = alloca %struct.debug_obj*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %4, align 8
  %9 = load i32, i32* @debug_objects_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call %struct.debug_bucket* @get_bucket(i64 %14)
  store %struct.debug_bucket* %15, %struct.debug_bucket** %6, align 8
  %16 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %17 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %22 = call %struct.debug_obj* @lookup_object(i8* %20, %struct.debug_bucket* %21)
  store %struct.debug_obj* %22, %struct.debug_obj** %7, align 8
  %23 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %24 = icmp ne %struct.debug_obj* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  br label %56

26:                                               ; preds = %12
  %27 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %28 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %46 [
    i32 128, label %30
  ]

30:                                               ; preds = %26
  %31 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %32 = call i32 @debug_print_object(%struct.debug_obj* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %34 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %37 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %41 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @debug_object_fixup(i32 %42, i8* %43, i32 %44)
  br label %61

46:                                               ; preds = %26
  %47 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %48 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %47, i32 0, i32 1
  %49 = call i32 @hlist_del(i32* %48)
  %50 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %51 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %55 = call i32 @free_object(%struct.debug_obj* %54)
  br label %61

56:                                               ; preds = %25
  %57 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %58 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %46, %30, %11
  ret void
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @free_object(%struct.debug_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
