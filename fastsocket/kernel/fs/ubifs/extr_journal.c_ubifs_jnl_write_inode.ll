; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ubifs_ino_node = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i64 }
%union.ubifs_key = type { i32 }

@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ino %lu, nlink %u\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_ino_node*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.ubifs_key, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %15)
  store %struct.ubifs_inode* %16, %struct.ubifs_inode** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dbg_jnl(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %2
  %34 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %35 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @IS_SYNC(%struct.inode* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %33, %2
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @GFP_NOFS, align 4
  %46 = call %struct.ubifs_ino_node* @kmalloc(i32 %44, i32 %45)
  store %struct.ubifs_ino_node* %46, %struct.ubifs_ino_node** %9, align 8
  %47 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %9, align 8
  %48 = icmp ne %struct.ubifs_ino_node* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %158

52:                                               ; preds = %43
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = load i64, i64* @BASEHD, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @make_reservation(%struct.ubifs_info* %53, i64 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %154

60:                                               ; preds = %52
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %9, align 8
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call i32 @pack_inode(%struct.ubifs_info* %61, %struct.ubifs_ino_node* %62, %struct.inode* %63, i32 1)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = load i64, i64* @BASEHD, align 8
  %67 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @write_head(%struct.ubifs_info* %65, i64 %66, %struct.ubifs_ino_node* %67, i32 %68, i32* %7, i32* %8, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %144

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* @BASEHD, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ubifs_wbuf_add_ino_nolock(i32* %83, i32 %86)
  br label %88

88:                                               ; preds = %77, %74
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %90 = load i64, i64* @BASEHD, align 8
  %91 = call i32 @release_head(%struct.ubifs_info* %89, i64 %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %95, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %148

103:                                              ; preds = %94
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %104, i32 %107)
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %109, i32 %110, i32 %111)
  store i32 %112, i32* %6, align 4
  br label %124

113:                                              ; preds = %88
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ino_key_init(%struct.ubifs_info* %114, %union.ubifs_key* %14, i32 %117)
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @ubifs_tnc_add(%struct.ubifs_info* %119, %union.ubifs_key* %14, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %113, %103
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %148

128:                                              ; preds = %124
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %130 = call i32 @finish_reservation(%struct.ubifs_info* %129)
  %131 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %132 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %131, i32 0, i32 0
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %135 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %138 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %140 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %9, align 8
  %143 = call i32 @kfree(%struct.ubifs_ino_node* %142)
  store i32 0, i32* %3, align 4
  br label %158

144:                                              ; preds = %73
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %146 = load i64, i64* @BASEHD, align 8
  %147 = call i32 @release_head(%struct.ubifs_info* %145, i64 %146)
  br label %148

148:                                              ; preds = %144, %127, %102
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %149, i32 %150)
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %153 = call i32 @finish_reservation(%struct.ubifs_info* %152)
  br label %154

154:                                              ; preds = %148, %59
  %155 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %9, align 8
  %156 = call i32 @kfree(%struct.ubifs_ino_node* %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %128, %49
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_jnl(i8*, i32, i32) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local %struct.ubifs_ino_node* @kmalloc(i32, i32) #1

declare dso_local i32 @make_reservation(%struct.ubifs_info*, i64, i32) #1

declare dso_local i32 @pack_inode(%struct.ubifs_info*, %struct.ubifs_ino_node*, %struct.inode*, i32) #1

declare dso_local i32 @write_head(%struct.ubifs_info*, i64, %struct.ubifs_ino_node*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ubifs_wbuf_add_ino_nolock(i32*, i32) #1

declare dso_local i32 @release_head(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_add(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i32 @finish_reservation(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
