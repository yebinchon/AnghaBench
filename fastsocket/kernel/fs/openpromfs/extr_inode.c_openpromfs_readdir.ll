; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openpromfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openpromfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.op_inode_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i8*, i32, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.TYPE_8__* }
%struct.property = type { i8*, i32, %struct.property* }
%struct.TYPE_8__ = type { i32 }

@op_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OPENPROM_ROOT_INO = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i32, i32)*)* @openpromfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openpromfs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.op_inode_info*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.op_inode_info* @OP_I(%struct.inode* %20)
  store %struct.op_inode_info* %21, %struct.op_inode_info** %8, align 8
  %22 = load %struct.op_inode_info*, %struct.op_inode_info** %8, align 8
  %23 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %9, align 8
  %26 = call i32 @mutex_lock(i32* @op_mutex)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %79 [
    i32 0, label %34
    i32 1, label %50
  ]

34:                                               ; preds = %3
  %35 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @DT_DIR, align 4
  %40 = call i32 %35(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %37, i32 %38, i32 %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %183

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %3, %43
  %51 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.device_node*, %struct.device_node** %9, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 5
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp eq %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @OPENPROM_ROOT_INO, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load %struct.device_node*, %struct.device_node** %9, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 5
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %60, %58
  %67 = phi i32 [ %59, %58 ], [ %65, %60 ]
  %68 = load i32, i32* @DT_DIR, align 4
  %69 = call i32 %51(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %53, i32 %67, i32 %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %183

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = load %struct.file*, %struct.file** %4, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %3, %72
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %13, align 4
  %82 = load %struct.device_node*, %struct.device_node** %9, align 8
  %83 = getelementptr inbounds %struct.device_node, %struct.device_node* %82, i32 0, i32 4
  %84 = load %struct.device_node*, %struct.device_node** %83, align 8
  store %struct.device_node* %84, %struct.device_node** %10, align 8
  br label %85

85:                                               ; preds = %93, %79
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.device_node*, %struct.device_node** %10, align 8
  %90 = icmp ne %struct.device_node* %89, null
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = load %struct.device_node*, %struct.device_node** %10, align 8
  %95 = getelementptr inbounds %struct.device_node, %struct.device_node* %94, i32 0, i32 3
  %96 = load %struct.device_node*, %struct.device_node** %95, align 8
  store %struct.device_node* %96, %struct.device_node** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %13, align 4
  br label %85

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %123, %99
  %101 = load %struct.device_node*, %struct.device_node** %10, align 8
  %102 = icmp ne %struct.device_node* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  %104 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load %struct.device_node*, %struct.device_node** %10, align 8
  %107 = getelementptr inbounds %struct.device_node, %struct.device_node* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.device_node*, %struct.device_node** %10, align 8
  %110 = getelementptr inbounds %struct.device_node, %struct.device_node* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = load %struct.file*, %struct.file** %4, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.device_node*, %struct.device_node** %10, align 8
  %117 = getelementptr inbounds %struct.device_node, %struct.device_node* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DT_DIR, align 4
  %120 = call i32 %104(i8* %105, i8* %108, i32 %112, i32 %115, i32 %118, i32 %119)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  br label %183

123:                                              ; preds = %103
  %124 = load %struct.file*, %struct.file** %4, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.device_node*, %struct.device_node** %10, align 8
  %129 = getelementptr inbounds %struct.device_node, %struct.device_node* %128, i32 0, i32 3
  %130 = load %struct.device_node*, %struct.device_node** %129, align 8
  store %struct.device_node* %130, %struct.device_node** %10, align 8
  br label %100

131:                                              ; preds = %100
  %132 = load %struct.device_node*, %struct.device_node** %9, align 8
  %133 = getelementptr inbounds %struct.device_node, %struct.device_node* %132, i32 0, i32 2
  %134 = load %struct.property*, %struct.property** %133, align 8
  store %struct.property* %134, %struct.property** %11, align 8
  br label %135

135:                                              ; preds = %143, %131
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.property*, %struct.property** %11, align 8
  %140 = icmp ne %struct.property* %139, null
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i1 [ false, %135 ], [ %140, %138 ]
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = load %struct.property*, %struct.property** %11, align 8
  %145 = getelementptr inbounds %struct.property, %struct.property* %144, i32 0, i32 2
  %146 = load %struct.property*, %struct.property** %145, align 8
  store %struct.property* %146, %struct.property** %11, align 8
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %13, align 4
  br label %135

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %173, %149
  %151 = load %struct.property*, %struct.property** %11, align 8
  %152 = icmp ne %struct.property* %151, null
  br i1 %152, label %153, label %181

153:                                              ; preds = %150
  %154 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.property*, %struct.property** %11, align 8
  %157 = getelementptr inbounds %struct.property, %struct.property* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.property*, %struct.property** %11, align 8
  %160 = getelementptr inbounds %struct.property, %struct.property* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = load %struct.file*, %struct.file** %4, align 8
  %164 = getelementptr inbounds %struct.file, %struct.file* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.property*, %struct.property** %11, align 8
  %167 = getelementptr inbounds %struct.property, %struct.property* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DT_REG, align 4
  %170 = call i32 %154(i8* %155, i8* %158, i32 %162, i32 %165, i32 %168, i32 %169)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %153
  br label %183

173:                                              ; preds = %153
  %174 = load %struct.file*, %struct.file** %4, align 8
  %175 = getelementptr inbounds %struct.file, %struct.file* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = load %struct.property*, %struct.property** %11, align 8
  %179 = getelementptr inbounds %struct.property, %struct.property* %178, i32 0, i32 2
  %180 = load %struct.property*, %struct.property** %179, align 8
  store %struct.property* %180, %struct.property** %11, align 8
  br label %150

181:                                              ; preds = %150
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %172, %122, %71, %42
  %184 = call i32 @mutex_unlock(i32* @op_mutex)
  ret i32 0
}

declare dso_local %struct.op_inode_info* @OP_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
