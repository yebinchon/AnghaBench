; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_iattr_to_fattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_iattr_to_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fuse_setattr_in = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@FATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@FATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@FATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@FATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@FATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@FATTR_ATIME_NOW = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@FATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@FATTR_MTIME_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iattr*, %struct.fuse_setattr_in*)* @iattr_to_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iattr_to_fattr(%struct.iattr* %0, %struct.fuse_setattr_in* %1) #0 {
  %3 = alloca %struct.iattr*, align 8
  %4 = alloca %struct.fuse_setattr_in*, align 8
  %5 = alloca i32, align 4
  store %struct.iattr* %0, %struct.iattr** %3, align 8
  store %struct.fuse_setattr_in* %1, %struct.fuse_setattr_in** %4, align 8
  %6 = load %struct.iattr*, %struct.iattr** %3, align 8
  %7 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ATTR_MODE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @FATTR_MODE, align 4
  %15 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %16 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.iattr*, %struct.iattr** %3, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %23 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ATTR_UID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* @FATTR_UID, align 4
  %31 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %32 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.iattr*, %struct.iattr** %3, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %39 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ATTR_GID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* @FATTR_GID, align 4
  %47 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %48 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.iattr*, %struct.iattr** %3, align 8
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %40
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ATTR_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @FATTR_SIZE, align 4
  %63 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %64 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.iattr*, %struct.iattr** %3, align 8
  %68 = getelementptr inbounds %struct.iattr, %struct.iattr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %71 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %56
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ATTR_ATIME, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load i32, i32* @FATTR_ATIME, align 4
  %79 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %80 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.iattr*, %struct.iattr** %3, align 8
  %84 = getelementptr inbounds %struct.iattr, %struct.iattr* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %88 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iattr*, %struct.iattr** %3, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %94 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ATTR_ATIME_SET, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %77
  %100 = load i32, i32* @FATTR_ATIME_NOW, align 4
  %101 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %102 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %77
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @ATTR_MTIME, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = call i64 @update_mtime(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load i32, i32* @FATTR_MTIME, align 4
  %117 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %118 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.iattr*, %struct.iattr** %3, align 8
  %122 = getelementptr inbounds %struct.iattr, %struct.iattr* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %126 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.iattr*, %struct.iattr** %3, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %132 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @ATTR_MTIME_SET, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %115
  %138 = load i32, i32* @FATTR_MTIME_NOW, align 4
  %139 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %4, align 8
  %140 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %115
  br label %144

144:                                              ; preds = %143, %111, %106
  ret void
}

declare dso_local i64 @update_mtime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
