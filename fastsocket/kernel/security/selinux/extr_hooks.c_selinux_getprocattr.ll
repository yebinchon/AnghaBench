; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_getprocattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_getprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.task_security_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.task_security_struct* }

@current = common dso_local global %struct.task_struct* null, align 8
@PROCESS__GETATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fscreate\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"keycreate\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sockcreate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, i8**)* @selinux_getprocattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_getprocattr(%struct.task_struct* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = icmp ne %struct.task_struct* %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = load i32, i32* @PROCESS__GETATTR, align 4
  %18 = call i32 @current_has_perm(%struct.task_struct* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %3
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call %struct.TYPE_2__* @__task_cred(%struct.task_struct* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.task_security_struct*, %struct.task_security_struct** %28, align 8
  store %struct.task_security_struct* %29, %struct.task_security_struct** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %35 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  br label %83

37:                                               ; preds = %24
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %43 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %82

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %51 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %59 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  br label %80

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %67 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  br label %79

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %75 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  br label %78

77:                                               ; preds = %69
  br label %98

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %57
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %41
  br label %83

83:                                               ; preds = %82, %33
  %84 = call i32 (...) @rcu_read_unlock()
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i8**, i8*** %7, align 8
  %91 = call i32 @security_sid_to_context(i32 %89, i8** %90, i32* %11)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %102

96:                                               ; preds = %88
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %77
  %99 = call i32 (...) @rcu_read_unlock()
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %96, %94, %87, %21
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @current_has_perm(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_2__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_sid_to_context(i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
