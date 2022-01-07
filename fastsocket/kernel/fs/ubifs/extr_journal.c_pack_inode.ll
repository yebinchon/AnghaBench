; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_pack_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_pack_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ino_node = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UBIFS_INO_NODE = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_ino_node*, %struct.inode*, i32)* @pack_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_inode(%struct.ubifs_info* %0, %struct.ubifs_ino_node* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_ino_node*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_ino_node* %1, %struct.ubifs_ino_node** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %18)
  store %struct.ubifs_inode* %19, %struct.ubifs_inode** %11, align 8
  %20 = load i32, i32* @UBIFS_INO_NODE, align 4
  %21 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %21, i32 0, i32 20
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %26 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %25, i32 0, i32 19
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ino_key_init_flash(%struct.ubifs_info* %24, i32* %26, i32 %29)
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le64(i32 %33)
  %35 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %35, i32 0, i32 18
  store i8* %34, i8** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le64(i32 %40)
  %42 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %42, i32 0, i32 17
  store i8* %41, i8** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %50 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %49, i32 0, i32 16
  store i8* %48, i8** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le64(i32 %54)
  %56 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %57 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %56, i32 0, i32 15
  store i8* %55, i8** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %64 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %63, i32 0, i32 14
  store i8* %62, i8** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le64(i32 %68)
  %70 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %71 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %70, i32 0, i32 13
  store i8* %69, i8** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %78 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %77, i32 0, i32 12
  store i8* %76, i8** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %84 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %90 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %96 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %98 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %102 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %104 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_le64(i32 %105)
  %107 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %108 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %114 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %116 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %120 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %122 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %126 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %128 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_le32(i32 %129)
  %131 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %132 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %134 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %138 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %140 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %144 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %146 = call i32 @zero_ino_node_unused(%struct.ubifs_ino_node* %145)
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %4
  %150 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %151 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %154 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %157 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memcpy(i32 %152, i32 %155, i32 %158)
  %160 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %161 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %149, %4
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %165 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %6, align 8
  %166 = load i64, i64* @UBIFS_INO_NODE_SZ, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @ubifs_prep_grp_node(%struct.ubifs_info* %164, %struct.ubifs_ino_node* %165, i64 %169, i32 %170)
  ret void
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ino_key_init_flash(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @zero_ino_node_unused(%struct.ubifs_ino_node*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ubifs_prep_grp_node(%struct.ubifs_info*, %struct.ubifs_ino_node*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
