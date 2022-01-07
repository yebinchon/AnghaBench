; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_item_ops.c_direntry_create_vi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_item_ops.c_direntry_create_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_node = type { i64, i32 }
%struct.virtual_item = type { i64, i32, i64, i32, %struct.direntry_uarea* }
%struct.direntry_uarea = type { i32, i32*, i32 }
%struct.reiserfs_de_head = type { i32 }

@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i64 0, align 8
@DIRENTRY_VI_FIRST_DIRENTRY_ITEM = common dso_local global i32 0, align 4
@M_CUT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@DEH_SIZE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtual_node*, %struct.virtual_item*, i32, i32)* @direntry_create_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direntry_create_vi(%struct.virtual_node* %0, %struct.virtual_item* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.virtual_node*, align 8
  %6 = alloca %struct.virtual_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.direntry_uarea*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.reiserfs_de_head*, align 8
  store %struct.virtual_node* %0, %struct.virtual_node** %5, align 8
  store %struct.virtual_item* %1, %struct.virtual_item** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %15 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %14, i32 0, i32 4
  %16 = load %struct.direntry_uarea*, %struct.direntry_uarea** %15, align 8
  store %struct.direntry_uarea* %16, %struct.direntry_uarea** %9, align 8
  store i32 24, i32* %12, align 4
  %17 = load i32, i32* @TYPE_DIRENTRY, align 4
  %18 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %19 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %21 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %26 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i1 [ true, %4 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %35 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %37 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @le_ih_k_offset(i32 %38)
  %40 = load i64, i64* @DOT_OFFSET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* @DIRENTRY_VI_FIRST_DIRENTRY_ITEM, align 4
  %44 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %45 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %50 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.reiserfs_de_head*
  store %struct.reiserfs_de_head* %52, %struct.reiserfs_de_head** %13, align 8
  %53 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %54 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ih_entry_count(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %48
  %60 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %61 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @M_CUT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %68 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @M_PASTE, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  br label %74

74:                                               ; preds = %66, %65
  %75 = phi i32 [ -1, %65 ], [ %73, %66 ]
  br label %77

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = add nsw i32 %56, %78
  %80 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %81 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %128, %77
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %85 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %92 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %95 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @old_entry_num(i32 %89, i32 %90, i64 %93, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %88
  %101 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %101, i64 %104
  %106 = call i32 @deh_location(%struct.reiserfs_de_head* %105)
  br label %112

107:                                              ; preds = %88
  %108 = load %struct.virtual_item*, %struct.virtual_item** %6, align 8
  %109 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ih_item_len(i32 %110)
  br label %112

112:                                              ; preds = %107, %100
  %113 = phi i32 [ %106, %100 ], [ %111, %107 ]
  %114 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %13, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %114, i64 %116
  %118 = call i32 @deh_location(%struct.reiserfs_de_head* %117)
  %119 = sub nsw i32 %113, %118
  %120 = load i32, i32* @DEH_SIZE, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %123 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %82

131:                                              ; preds = %82
  %132 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %133 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 2
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %131
  %144 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %145 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @M_PASTE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.direntry_uarea*, %struct.direntry_uarea** %9, align 8
  %152 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.virtual_node*, %struct.virtual_node** %5, align 8
  %155 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %150, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %143, %131
  %159 = load i32, i32* %12, align 4
  ret i32 %159
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le_ih_k_offset(i32) #1

declare dso_local i32 @ih_entry_count(i32) #1

declare dso_local i32 @old_entry_num(i32, i32, i64, i32) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @ih_item_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
