; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_fill_common_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_fill_common_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32, i32, i32, i32, i32 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_FATTR_NEED_REVAL = common dso_local global i32 0, align 4
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_fattr*, %struct.cifs_sb_info*)* @cifs_fill_common_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_fill_common_info(%struct.cifs_fattr* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca %struct.cifs_fattr*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %3, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %4, align 8
  %5 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %6 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %9 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %14 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %16 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATTR_DIRECTORY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @S_IFDIR, align 4
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %28 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DT_DIR, align 4
  %30 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %31 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %39 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DT_REG, align 4
  %41 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %42 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %21
  %44 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %45 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATTR_READONLY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @S_IWUGO, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %54 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %59 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %66 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %67 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %72 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %70
  %78 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %79 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ATTR_SYSTEM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %86 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i32, i32* @S_IFMT, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %93 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @S_IFIFO, align 4
  %97 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %98 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @DT_FIFO, align 4
  %102 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %103 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  br label %110

104:                                              ; preds = %84
  %105 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %106 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %107 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %89
  br label %111

111:                                              ; preds = %110, %77, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
