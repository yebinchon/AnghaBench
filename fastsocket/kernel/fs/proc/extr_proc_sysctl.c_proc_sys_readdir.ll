; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ctl_table_header = type { %struct.ctl_table*, %struct.ctl_table*, %struct.ctl_table* }
%struct.ctl_table = type { %struct.ctl_table* }
%struct.TYPE_4__ = type { %struct.ctl_table* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i8*, i32, i32, i32, i32)*)* @proc_sys_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_readdir(%struct.file* %0, i8* %1, i64 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ctl_table_header*, align 8
  %11 = alloca %struct.ctl_table*, align 8
  %12 = alloca %struct.ctl_table_header*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %2, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call %struct.ctl_table_header* @grab_header(%struct.inode* %22)
  store %struct.ctl_table_header* %23, %struct.ctl_table_header** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call %struct.TYPE_4__* @PROC_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ctl_table*, %struct.ctl_table** %26, align 8
  store %struct.ctl_table* %27, %struct.ctl_table** %11, align 8
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %12, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %31 = call i64 @IS_ERR(%struct.ctl_table_header* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.ctl_table_header* %34)
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %3
  %37 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %38 = icmp ne %struct.ctl_table* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %41 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %40, i32 0, i32 0
  %42 = load %struct.ctl_table*, %struct.ctl_table** %41, align 8
  %43 = icmp ne %struct.ctl_table* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 @WARN_ON(i32 1)
  br label %144

46:                                               ; preds = %39, %36
  %47 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %48 = icmp ne %struct.ctl_table* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %51 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %50, i32 0, i32 0
  %52 = load %struct.ctl_table*, %struct.ctl_table** %51, align 8
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %55 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %54, i32 0, i32 2
  %56 = load %struct.ctl_table*, %struct.ctl_table** %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi %struct.ctl_table* [ %52, %49 ], [ %56, %53 ]
  store %struct.ctl_table* %58, %struct.ctl_table** %11, align 8
  store i32 0, i32* %14, align 4
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DT_DIR, align 4
  %73 = call i64 %64(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %68, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %144

76:                                               ; preds = %63
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %76, %57
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dentry*, %struct.dentry** %8, align 8
  %93 = call i32 @parent_ino(%struct.dentry* %92)
  %94 = load i32, i32* @DT_DIR, align 4
  %95 = call i64 %87(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %91, i32 %93, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %144

98:                                               ; preds = %86
  %99 = load %struct.file*, %struct.file** %5, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %81
  store i64 2, i64* %13, align 8
  %104 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %105 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %109 = call i32 @scan(%struct.ctl_table_header* %104, %struct.ctl_table* %105, i64* %13, %struct.file* %106, i8* %107, i64 (i8*, i8*, i32, i32, i32, i32)* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %144

113:                                              ; preds = %103
  %114 = call %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header* null)
  store %struct.ctl_table_header* %114, %struct.ctl_table_header** %12, align 8
  br label %115

115:                                              ; preds = %140, %113
  %116 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %117 = icmp ne %struct.ctl_table_header* %116, null
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %120 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %119, i32 0, i32 1
  %121 = load %struct.ctl_table*, %struct.ctl_table** %120, align 8
  %122 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %123 = icmp ne %struct.ctl_table* %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %140

125:                                              ; preds = %118
  %126 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %127 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %128 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %127, i32 0, i32 0
  %129 = load %struct.ctl_table*, %struct.ctl_table** %128, align 8
  %130 = load %struct.file*, %struct.file** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %133 = call i32 @scan(%struct.ctl_table_header* %126, %struct.ctl_table* %129, i64* %13, %struct.file* %130, i8* %131, i64 (i8*, i8*, i32, i32, i32, i32)* %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %138 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %137)
  br label %143

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.ctl_table_header*, %struct.ctl_table_header** %12, align 8
  %142 = call %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header* %141)
  store %struct.ctl_table_header* %142, %struct.ctl_table_header** %12, align 8
  br label %115

143:                                              ; preds = %136, %115
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %143, %112, %97, %75, %44
  %145 = load %struct.ctl_table_header*, %struct.ctl_table_header** %10, align 8
  %146 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %33
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @parent_ino(%struct.dentry*) #1

declare dso_local i32 @scan(%struct.ctl_table_header*, %struct.ctl_table*, i64*, %struct.file*, i8*, i64 (i8*, i8*, i32, i32, i32, i32)*) #1

declare dso_local %struct.ctl_table_header* @sysctl_head_next(%struct.ctl_table_header*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
