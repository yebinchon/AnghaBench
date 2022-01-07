; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_debug_object_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c_debug_object_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32 }

@debug_objects_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@ODEBUG_STATE_NOTAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_object_activate(i8* %0, %struct.debug_obj_descr* %1) #0 {
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
  br label %68

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
  br i1 %24, label %25, label %57

25:                                               ; preds = %12
  %26 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %27 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %51 [
    i32 128, label %29
    i32 129, label %29
    i32 131, label %32
    i32 130, label %48
  ]

29:                                               ; preds = %25, %25
  %30 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %31 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %30, i32 0, i32 0
  store i32 131, i32* %31, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %34 = call i32 @debug_print_object(%struct.debug_obj* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %36 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %39 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %43 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @debug_object_fixup(i32 %44, i8* %45, i32 %46)
  br label %68

48:                                               ; preds = %25
  %49 = load %struct.debug_obj*, %struct.debug_obj** %7, align 8
  %50 = call i32 @debug_print_object(%struct.debug_obj* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %52

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %48, %29
  %53 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %54 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %68

57:                                               ; preds = %12
  %58 = load %struct.debug_bucket*, %struct.debug_bucket** %6, align 8
  %59 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %4, align 8
  %63 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @ODEBUG_STATE_NOTAVAILABLE, align 4
  %67 = call i32 @debug_object_fixup(i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %52, %32, %11
  ret void
}

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
