; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kmod.c_call_usermodehelper_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kmod.c_call_usermodehelper_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_info = type { i8*, i8**, i8**, i32, i32 }

@__call_usermodehelper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subprocess_info* @call_usermodehelper_setup(i8* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.subprocess_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.subprocess_info*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call %struct.subprocess_info* @kzalloc(i32 32, i32 %11)
  store %struct.subprocess_info* %12, %struct.subprocess_info** %10, align 8
  %13 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %14 = icmp ne %struct.subprocess_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %41

16:                                               ; preds = %4
  %17 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %18 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %17, i32 0, i32 4
  %19 = load i32, i32* @__call_usermodehelper, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %23 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %26 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %25, i32 0, i32 1
  store i8** %24, i8*** %26, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %29 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %28, i32 0, i32 2
  store i8** %27, i8*** %29, align 8
  %30 = call i32 (...) @prepare_usermodehelper_creds()
  %31 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %32 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %34 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %16
  %38 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  %39 = call i32 @kfree(%struct.subprocess_info* %38)
  store %struct.subprocess_info* null, %struct.subprocess_info** %5, align 8
  br label %43

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.subprocess_info*, %struct.subprocess_info** %10, align 8
  store %struct.subprocess_info* %42, %struct.subprocess_info** %5, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.subprocess_info*, %struct.subprocess_info** %5, align 8
  ret %struct.subprocess_info* %44
}

declare dso_local %struct.subprocess_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @prepare_usermodehelper_creds(...) #1

declare dso_local i32 @kfree(%struct.subprocess_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
