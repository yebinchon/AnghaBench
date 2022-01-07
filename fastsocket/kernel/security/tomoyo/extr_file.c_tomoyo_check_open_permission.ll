; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_open_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_open_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }
%struct.path = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tomoyo_path_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_MAC_FOR_FILE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@TOMOYO_TYPE_REWRITE_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@TOMOYO_TYPE_TRUNCATE_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_check_open_permission(%struct.tomoyo_domain_info* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tomoyo_path_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ACC_MODE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %18 = load i32, i32* @TOMOYO_MAC_FOR_FILE, align 4
  %19 = call i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.path*, %struct.path** %6, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %116

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %116

35:                                               ; preds = %31
  %36 = load %struct.path*, %struct.path** %6, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.path*, %struct.path** %6, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %116

53:                                               ; preds = %42, %35
  %54 = load %struct.path*, %struct.path** %6, align 8
  %55 = call %struct.tomoyo_path_info* @tomoyo_get_path(%struct.path* %54)
  store %struct.tomoyo_path_info* %55, %struct.tomoyo_path_info** %10, align 8
  %56 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %57 = icmp ne %struct.tomoyo_path_info* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %108

59:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MAY_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @O_TRUNC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @O_APPEND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %76 = call i64 @tomoyo_is_no_rewrite_file(%struct.tomoyo_path_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %80 = load i32, i32* @TOMOYO_TYPE_REWRITE_ACL, align 4
  %81 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info* %79, i32 %80, %struct.tomoyo_path_info* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %78, %74, %69, %59
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %89 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @tomoyo_check_file_perm2(%struct.tomoyo_domain_info* %88, %struct.tomoyo_path_info* %89, i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @O_TRUNC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %103 = load i32, i32* @TOMOYO_TYPE_TRUNCATE_ACL, align 4
  %104 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info* %102, i32 %103, %struct.tomoyo_path_info* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %101, %96, %93
  br label %108

108:                                              ; preds = %107, %58
  %109 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %10, align 8
  %110 = call i32 @tomoyo_free(%struct.tomoyo_path_info* %109)
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %108
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %52, %34, %30
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @ACC_MODE(i32) #1

declare dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_path(%struct.path*) #1

declare dso_local i64 @tomoyo_is_no_rewrite_file(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info*, i32, %struct.tomoyo_path_info*, i32) #1

declare dso_local i32 @tomoyo_check_file_perm2(%struct.tomoyo_domain_info*, %struct.tomoyo_path_info*, i32, i8*, i32) #1

declare dso_local i32 @tomoyo_free(%struct.tomoyo_path_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
