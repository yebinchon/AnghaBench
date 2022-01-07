; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32, i64 }
%struct.rpc_inode = type { i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*)*, i32 (%struct.rpc_pipe_msg*)* }
%struct.rpc_pipe_msg = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@free_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpc_pipe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipe_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rpc_inode*, align 8
  %6 = alloca %struct.rpc_pipe_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.rpc_inode* @RPC_I(%struct.inode* %8)
  store %struct.rpc_inode* %9, %struct.rpc_inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %129

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rpc_pipe_msg*
  store %struct.rpc_pipe_msg* %22, %struct.rpc_pipe_msg** %6, align 8
  %23 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %24 = icmp ne %struct.rpc_pipe_msg* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %32 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %34 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %33, i32 0, i32 0
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %40 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.rpc_pipe_msg*)*, i32 (%struct.rpc_pipe_msg*)** %42, align 8
  %44 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %6, align 8
  %45 = call i32 %43(%struct.rpc_pipe_msg* %44)
  br label %46

46:                                               ; preds = %25, %18
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FMODE_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %55 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FMODE_READ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %58
  %66 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %71 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %65
  %75 = load i32, i32* @free_list, align 4
  %76 = call i32 @LIST_HEAD(i32 %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %81 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %80, i32 0, i32 4
  %82 = call i32 @list_splice_init(i32* %81, i32* @free_list)
  %83 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %84 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %89 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %90 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32 (%struct.rpc_pipe_msg*)*, i32 (%struct.rpc_pipe_msg*)** %92, align 8
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 @rpc_purge_list(%struct.rpc_inode* %88, i32* @free_list, i32 (%struct.rpc_pipe_msg*)* %93, i32 %95)
  br label %97

97:                                               ; preds = %74, %65
  br label %98

98:                                               ; preds = %97, %58
  %99 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %100 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %105 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i1 [ false, %98 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %115 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %117, align 8
  %119 = icmp ne i32 (%struct.inode*)* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %122 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %124, align 8
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = call i32 %125(%struct.inode* %126)
  br label %128

128:                                              ; preds = %120, %113, %108
  br label %129

129:                                              ; preds = %128, %17
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  ret i32 0
}

declare dso_local %struct.rpc_inode* @RPC_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @rpc_purge_list(%struct.rpc_inode*, i32*, i32 (%struct.rpc_pipe_msg*)*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
