; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_dump_str_object_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_dump_str_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unknown object at 0x%08lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_str_object_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_str_object_info(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kmemleak_object*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_strtoul(i8* %7, i32* null, i32 0)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call %struct.kmemleak_object* @find_and_get_object(i64 %9, i32 0)
  store %struct.kmemleak_object* %10, %struct.kmemleak_object** %5, align 8
  %11 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %12 = icmp ne %struct.kmemleak_object* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %20 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %24 = call i32 @dump_object_info(%struct.kmemleak_object* %23)
  %25 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %26 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %30 = call i32 @put_object(%struct.kmemleak_object* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dump_object_info(%struct.kmemleak_object*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
