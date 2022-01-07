; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_send_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_send_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i32, i8* }
%struct.netfs_trans = type { i32 }
%struct.netfs_cmd = type { i32, i32, i32, i32, i32 }
%struct.pohmelfs_sb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@NETFS_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_inode*, %struct.pohmelfs_inode*, %struct.qstr*)* @pohmelfs_send_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_send_rename(%struct.pohmelfs_inode* %0, %struct.pohmelfs_inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pohmelfs_inode*, align 8
  %6 = alloca %struct.pohmelfs_inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.netfs_trans*, align 8
  %15 = alloca %struct.netfs_cmd*, align 8
  %16 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.pohmelfs_inode* %0, %struct.pohmelfs_inode** %5, align 8
  store %struct.pohmelfs_inode* %1, %struct.pohmelfs_inode** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pohmelfs_sb* @POHMELFS_SB(i32 %20)
  store %struct.pohmelfs_sb* %21, %struct.pohmelfs_sb** %16, align 8
  %22 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %6, align 8
  %23 = call i32 @pohmelfs_path_length(%struct.pohmelfs_inode* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %5, align 8
  %25 = call i32 @pohmelfs_path_length(%struct.pohmelfs_inode* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %149

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.qstr*, %struct.qstr** %7, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = add nsw i32 %41, 3
  store i32 %42, i32* %8, align 4
  %43 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %16, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb* %43, i32 %44, i32 0, i32 0)
  store %struct.netfs_trans* %45, %struct.netfs_trans** %14, align 8
  %46 = load %struct.netfs_trans*, %struct.netfs_trans** %14, align 8
  %47 = icmp ne %struct.netfs_trans* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %149

51:                                               ; preds = %34
  %52 = load %struct.netfs_trans*, %struct.netfs_trans** %14, align 8
  %53 = call %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans* %52)
  store %struct.netfs_cmd* %53, %struct.netfs_cmd** %15, align 8
  %54 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %55 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %54, i64 1
  %56 = bitcast %struct.netfs_cmd* %55 to i8*
  store i8* %56, i8** %13, align 8
  %57 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %5, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @pohmelfs_construct_path_string(%struct.pohmelfs_inode* %57, i8* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %145

64:                                               ; preds = %51
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %67 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %13, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %13, align 8
  store i8 124, i8* %78, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  %85 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %6, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @pohmelfs_construct_path_string(%struct.pohmelfs_inode* %85, i8* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %64
  br label %145

92:                                               ; preds = %64
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load %struct.qstr*, %struct.qstr** %7, align 8
  %109 = getelementptr inbounds %struct.qstr, %struct.qstr* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @snprintf(i8* %105, i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @NETFS_RENAME, align 4
  %121 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %122 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %5, align 8
  %124 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %127 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %6, align 8
  %129 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %132 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %135 = getelementptr inbounds %struct.netfs_cmd, %struct.netfs_cmd* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %137 = call i32 @netfs_convert_cmd(%struct.netfs_cmd* %136)
  %138 = load %struct.netfs_cmd*, %struct.netfs_cmd** %15, align 8
  %139 = load %struct.netfs_trans*, %struct.netfs_trans** %14, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @netfs_trans_update(%struct.netfs_cmd* %138, %struct.netfs_trans* %139, i32 %140)
  %142 = load %struct.netfs_trans*, %struct.netfs_trans** %14, align 8
  %143 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %16, align 8
  %144 = call i32 @netfs_trans_finish(%struct.netfs_trans* %142, %struct.pohmelfs_sb* %143)
  store i32 %144, i32* %4, align 4
  br label %149

145:                                              ; preds = %91, %63
  %146 = load %struct.netfs_trans*, %struct.netfs_trans** %14, align 8
  %147 = call i32 @netfs_trans_free(%struct.netfs_trans* %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %92, %48, %31
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.pohmelfs_sb* @POHMELFS_SB(i32) #1

declare dso_local i32 @pohmelfs_path_length(%struct.pohmelfs_inode*) #1

declare dso_local %struct.netfs_trans* @netfs_trans_alloc(%struct.pohmelfs_sb*, i32, i32, i32) #1

declare dso_local %struct.netfs_cmd* @netfs_trans_current(%struct.netfs_trans*) #1

declare dso_local i32 @pohmelfs_construct_path_string(%struct.pohmelfs_inode*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @netfs_convert_cmd(%struct.netfs_cmd*) #1

declare dso_local i32 @netfs_trans_update(%struct.netfs_cmd*, %struct.netfs_trans*, i32) #1

declare dso_local i32 @netfs_trans_finish(%struct.netfs_trans*, %struct.pohmelfs_sb*) #1

declare dso_local i32 @netfs_trans_free(%struct.netfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
