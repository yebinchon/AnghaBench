; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c___debug_object_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_debugobjects.c___debug_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj_descr = type { i32 }
%struct.debug_bucket = type { i32 }
%struct.debug_obj = type { i32 }

@debug_objects_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.debug_obj_descr*, i32)* @__debug_object_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__debug_object_init(i8* %0, %struct.debug_obj_descr* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_obj_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_bucket*, align 8
  %9 = alloca %struct.debug_obj*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.debug_obj_descr* %1, %struct.debug_obj_descr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @fill_pool()
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = call %struct.debug_bucket* @get_bucket(i64 %13)
  store %struct.debug_bucket* %14, %struct.debug_bucket** %8, align 8
  %15 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %16 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %21 = call %struct.debug_obj* @lookup_object(i8* %19, %struct.debug_bucket* %20)
  store %struct.debug_obj* %21, %struct.debug_obj** %9, align 8
  %22 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %23 = icmp ne %struct.debug_obj* %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %27 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %28 = call %struct.debug_obj* @alloc_object(i8* %25, %struct.debug_bucket* %26, %struct.debug_obj_descr* %27)
  store %struct.debug_obj* %28, %struct.debug_obj** %9, align 8
  %29 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %30 = icmp ne %struct.debug_obj* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  store i64 0, i64* @debug_objects_enabled, align 8
  %32 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %33 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = call i32 (...) @debug_objects_oom()
  br label %73

37:                                               ; preds = %24
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @debug_object_is_on_stack(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %43 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %67 [
    i32 128, label %45
    i32 129, label %45
    i32 130, label %45
    i32 132, label %48
    i32 131, label %64
  ]

45:                                               ; preds = %41, %41, %41
  %46 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %47 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %46, i32 0, i32 0
  store i32 129, i32* %47, align 4
  br label %68

48:                                               ; preds = %41
  %49 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %50 = call i32 @debug_print_object(%struct.debug_obj* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %52 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %55 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %54, i32 0, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %5, align 8
  %59 = getelementptr inbounds %struct.debug_obj_descr, %struct.debug_obj_descr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @debug_object_fixup(i32 %60, i8* %61, i32 %62)
  br label %73

64:                                               ; preds = %41
  %65 = load %struct.debug_obj*, %struct.debug_obj** %9, align 8
  %66 = call i32 @debug_print_object(%struct.debug_obj* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %68

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %64, %45
  %69 = load %struct.debug_bucket*, %struct.debug_bucket** %8, align 8
  %70 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %48, %31
  ret void
}

declare dso_local i32 @fill_pool(...) #1

declare dso_local %struct.debug_bucket* @get_bucket(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.debug_obj* @lookup_object(i8*, %struct.debug_bucket*) #1

declare dso_local %struct.debug_obj* @alloc_object(i8*, %struct.debug_bucket*, %struct.debug_obj_descr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debug_objects_oom(...) #1

declare dso_local i32 @debug_object_is_on_stack(i8*, i32) #1

declare dso_local i32 @debug_print_object(%struct.debug_obj*, i8*) #1

declare dso_local i32 @debug_object_fixup(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
