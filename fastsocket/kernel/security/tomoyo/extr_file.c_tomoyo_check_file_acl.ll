; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_file_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_file_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@TOMOYO_MAC_FOR_FILE = common dso_local global i32 0, align 4
@TOMOYO_TYPE_READ_WRITE_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_READ_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_WRITE_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_EXECUTE_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_domain_info*, %struct.tomoyo_path_info*, i32)* @tomoyo_check_file_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_check_file_acl(%struct.tomoyo_domain_info* %0, %struct.tomoyo_path_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  %6 = alloca %struct.tomoyo_path_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %5, align 8
  store %struct.tomoyo_path_info* %1, %struct.tomoyo_path_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %10 = load i32, i32* @TOMOYO_MAC_FOR_FILE, align 4
  %11 = call i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @TOMOYO_TYPE_READ_WRITE_ACL, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %8, align 4
  br label %43

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @TOMOYO_TYPE_READ_ACL, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %8, align 4
  br label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @TOMOYO_TYPE_WRITE_ACL, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %8, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @TOMOYO_TYPE_EXECUTE_ACL, align 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %45 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @tomoyo_check_single_path_acl2(%struct.tomoyo_domain_info* %44, %struct.tomoyo_path_info* %45, i32 %46, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @tomoyo_check_single_path_acl2(%struct.tomoyo_domain_info*, %struct.tomoyo_path_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
