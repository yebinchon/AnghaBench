; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_prepare_binprm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_prepare_binprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@PER_CLEAR_ON_SETID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@BINPRM_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_binprm(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %7 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %8 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %19 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %1
  %28 = call i32 (...) @current_euid()
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %30 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = call i32 (...) @current_egid()
  %34 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %35 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %39 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MNT_NOSUID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @S_ISUID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %56 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %57 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %64 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %63, i32 0, i32 3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %54, %49
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @S_ISGID, align 4
  %70 = load i32, i32* @S_IXGRP, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load i32, i32* @S_ISGID, align 4
  %74 = load i32, i32* @S_IXGRP, align 4
  %75 = or i32 %73, %74
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %79 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %80 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %87 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %77, %67
  br label %91

91:                                               ; preds = %90, %27
  %92 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %93 = call i32 @security_bprm_set_creds(%struct.linux_binprm* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %114

98:                                               ; preds = %91
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %100 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %102 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %105 = call i32 @memset(i32 %103, i32 0, i32 %104)
  %106 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %107 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %110 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %113 = call i32 @kernel_read(%struct.TYPE_10__* %108, i32 0, i32 %111, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %98, %96, %24
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @current_egid(...) #1

declare dso_local i32 @security_bprm_set_creds(%struct.linux_binprm*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kernel_read(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
