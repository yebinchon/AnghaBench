; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_setup_nodes_for_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_setup_nodes_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer**, i64 }
%struct.extent_buffer = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*, i32, i32, i32*)* @setup_nodes_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_nodes_for_search(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.extent_buffer* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store %struct.extent_buffer* %3, %struct.extent_buffer** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %20 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %23, %7
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %28 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %27)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %30 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root* %29)
  %31 = sub nsw i32 %30, 3
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %26
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32*, i32** %15, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %44 = call i32 @btrfs_release_path(%struct.btrfs_path* %43)
  br label %144

45:                                               ; preds = %33
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @reada_for_balance(%struct.btrfs_root* %46, %struct.btrfs_path* %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %144

53:                                               ; preds = %45
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %55 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %54)
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @split_node(%struct.btrfs_trans_handle* %56, %struct.btrfs_root* %57, %struct.btrfs_path* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %62 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %61, i32* null, i32 0)
  %63 = load i32, i32* %17, align 4
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %16, align 4
  br label %147

71:                                               ; preds = %53
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 0
  %74 = load %struct.extent_buffer**, %struct.extent_buffer*** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %74, i64 %76
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %77, align 8
  store %struct.extent_buffer* %78, %struct.extent_buffer** %12, align 8
  br label %143

79:                                               ; preds = %26, %23
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %79
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %84 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %83)
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %86 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root* %85)
  %87 = sdiv i32 %86, 2
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %142

89:                                               ; preds = %82
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32*, i32** %15, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %100 = call i32 @btrfs_release_path(%struct.btrfs_path* %99)
  br label %144

101:                                              ; preds = %89
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @reada_for_balance(%struct.btrfs_root* %102, %struct.btrfs_path* %103, i32 %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %144

109:                                              ; preds = %101
  %110 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %111 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %110)
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @balance_level(%struct.btrfs_trans_handle* %112, %struct.btrfs_root* %113, %struct.btrfs_path* %114, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %118 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %117, i32* null, i32 0)
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %16, align 4
  br label %147

123:                                              ; preds = %109
  %124 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %125 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %124, i32 0, i32 0
  %126 = load %struct.extent_buffer**, %struct.extent_buffer*** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %126, i64 %128
  %130 = load %struct.extent_buffer*, %struct.extent_buffer** %129, align 8
  store %struct.extent_buffer* %130, %struct.extent_buffer** %12, align 8
  %131 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %132 = icmp ne %struct.extent_buffer* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %135 = call i32 @btrfs_release_path(%struct.btrfs_path* %134)
  br label %144

136:                                              ; preds = %123
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %138 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %137)
  %139 = icmp eq i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUG_ON(i32 %140)
  br label %142

142:                                              ; preds = %136, %82, %79
  br label %143

143:                                              ; preds = %142, %71
  store i32 0, i32* %8, align 4
  br label %149

144:                                              ; preds = %133, %108, %95, %52, %39
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %144, %121, %69
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @reada_for_balance(%struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @split_node(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_clear_path_blocking(%struct.btrfs_path*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @balance_level(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
