; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FUSE_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @fuse_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %12 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAY_EXEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @S_ISREG(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29, %17
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @fuse_update_attributes(%struct.inode* %36, i32* null, i32* null, i32* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %126

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29, %24
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @generic_permission(%struct.inode* %51, i32 %52, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @fuse_do_getattr(%struct.inode* %62, i32* null, i32* null)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @generic_permission(%struct.inode* %67, i32 %68, i32* null)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %58, %50
  br label %124

72:                                               ; preds = %43
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MAY_ACCESS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @fuse_access(%struct.inode* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %123

81:                                               ; preds = %72
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MAY_EXEC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @S_ISREG(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @S_IXUGO, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EACCES, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %126

105:                                              ; preds = %99
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call i32 @fuse_do_getattr(%struct.inode* %106, i32* null, i32* null)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @S_IXUGO, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @EACCES, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %126

120:                                              ; preds = %110, %105
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %86, %81
  br label %123

123:                                              ; preds = %122, %77
  br label %124

124:                                              ; preds = %123, %71
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %117, %102, %40, %14
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, i32*, i32*, i32*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32, i32*) #1

declare dso_local i32 @fuse_do_getattr(%struct.inode*, i32*, i32*) #1

declare dso_local i32 @fuse_access(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
