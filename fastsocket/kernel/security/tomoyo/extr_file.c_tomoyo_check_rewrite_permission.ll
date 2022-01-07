; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_rewrite_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_rewrite_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_MAC_FOR_FILE = common dso_local global i32 0, align 4
@TOMOYO_TYPE_REWRITE_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_check_rewrite_permission(%struct.tomoyo_domain_info* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_domain_info*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_path_info*, align 8
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %4, align 8
  %13 = load i32, i32* @TOMOYO_MAC_FOR_FILE, align 4
  %14 = call i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 3
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = call %struct.tomoyo_path_info* @tomoyo_get_path(%struct.TYPE_2__* %29)
  store %struct.tomoyo_path_info* %30, %struct.tomoyo_path_info** %9, align 8
  %31 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %32 = icmp ne %struct.tomoyo_path_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %45

34:                                               ; preds = %27
  %35 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %36 = call i32 @tomoyo_is_no_rewrite_file(%struct.tomoyo_path_info* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %4, align 8
  %41 = load i32, i32* @TOMOYO_TYPE_REWRITE_ACL, align 4
  %42 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info* %40, i32 %41, %struct.tomoyo_path_info* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %39, %38, %33
  %46 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %47 = call i32 @tomoyo_free(%struct.tomoyo_path_info* %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info*, i32) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_path(%struct.TYPE_2__*) #1

declare dso_local i32 @tomoyo_is_no_rewrite_file(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info*, i32, %struct.tomoyo_path_info*, i32) #1

declare dso_local i32 @tomoyo_free(%struct.tomoyo_path_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
