; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_fs_use.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_fs_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_5__, %struct.ocontext*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@OCON_FSUSE = common dso_local global i64 0, align 8
@sidtab = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SECCLASS_DIR = common dso_local global i32 0, align 4
@SECURITY_FS_USE_NONE = common dso_local global i32 0, align 4
@SECURITY_FS_USE_GENFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_fs_use(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocontext*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 @read_lock(i32* @policy_rwlock)
  %10 = load %struct.ocontext**, %struct.ocontext*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @policydb, i32 0, i32 0), align 8
  %11 = load i64, i64* @OCON_FSUSE, align 8
  %12 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %10, i64 %11
  %13 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  store %struct.ocontext* %13, %struct.ocontext** %8, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %16 = icmp ne %struct.ocontext* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %20 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i8* %18, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %28 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %27, i32 0, i32 3
  %29 = load %struct.ocontext*, %struct.ocontext** %28, align 8
  store %struct.ocontext* %29, %struct.ocontext** %8, align 8
  br label %14

30:                                               ; preds = %25, %14
  %31 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %32 = icmp ne %struct.ocontext* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %35 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %40 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %33
  %46 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %47 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %51 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %49, i64* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %81

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.ocontext*, %struct.ocontext** %8, align 8
  %61 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  br label %80

66:                                               ; preds = %30
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @SECCLASS_DIR, align 4
  %69 = load i64*, i64** %6, align 8
  %70 = call i32 @security_genfs_sid(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %68, i64* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @SECURITY_FS_USE_NONE, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %7, align 4
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @SECURITY_FS_USE_GENFS, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80, %57
  %82 = call i32 @read_unlock(i32* @policy_rwlock)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, i32*, i64*) #1

declare dso_local i32 @security_genfs_sid(i8*, i8*, i32, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
