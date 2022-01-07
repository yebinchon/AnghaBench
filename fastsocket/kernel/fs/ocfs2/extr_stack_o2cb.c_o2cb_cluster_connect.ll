; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_cluster_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_o2cb.c_o2cb_cluster_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.ocfs2_cluster_connection = type { %struct.o2dlm_private*, %struct.dlm_ctxt*, %struct.TYPE_3__, i32, i32 }
%struct.o2dlm_private = type { i32 }
%struct.dlm_ctxt = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_protocol_version = type { i32, i32 }

@o2cb_stack = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@o2dlm_eviction_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*)* @o2cb_cluster_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2cb_cluster_connect(%struct.ocfs2_cluster_connection* %0) #0 {
  %2 = alloca %struct.ocfs2_cluster_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.o2dlm_private*, align 8
  %7 = alloca %struct.dlm_protocol_version, align 4
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %9 = icmp eq %struct.ocfs2_cluster_connection* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @o2cb_stack, i32 0, i32 0), align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 (...) @o2hb_check_local_node_heartbeating()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.o2dlm_private* @kzalloc(i32 4, i32 %22)
  store %struct.o2dlm_private* %23, %struct.o2dlm_private** %6, align 8
  %24 = load %struct.o2dlm_private*, %struct.o2dlm_private** %6, align 8
  %25 = icmp ne %struct.o2dlm_private* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %21
  %30 = load %struct.o2dlm_private*, %struct.o2dlm_private** %6, align 8
  %31 = getelementptr inbounds %struct.o2dlm_private, %struct.o2dlm_private* %30, i32 0, i32 0
  %32 = load i32, i32* @o2dlm_eviction_cb, align 4
  %33 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %34 = call i32 @dlm_setup_eviction_cb(i32* %31, i32 %32, %struct.ocfs2_cluster_connection* %33)
  %35 = load %struct.o2dlm_private*, %struct.o2dlm_private** %6, align 8
  %36 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %36, i32 0, i32 0
  store %struct.o2dlm_private* %35, %struct.o2dlm_private** %37, align 8
  %38 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %39 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @crc32_le(i32 0, i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %56 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.dlm_ctxt* @dlm_register_domain(i32 %57, i32 %58, %struct.dlm_protocol_version* %7)
  store %struct.dlm_ctxt* %59, %struct.dlm_ctxt** %5, align 8
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %61 = call i64 @IS_ERR(%struct.dlm_ctxt* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %29
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %65 = call i32 @PTR_ERR(%struct.dlm_ctxt* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %86

68:                                               ; preds = %29
  %69 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %72 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %77 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %80 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %81 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %80, i32 0, i32 1
  store %struct.dlm_ctxt* %79, %struct.dlm_ctxt** %81, align 8
  %82 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %83 = load %struct.o2dlm_private*, %struct.o2dlm_private** %6, align 8
  %84 = getelementptr inbounds %struct.o2dlm_private, %struct.o2dlm_private* %83, i32 0, i32 0
  %85 = call i32 @dlm_register_eviction_cb(%struct.dlm_ctxt* %82, i32* %84)
  br label %86

86:                                               ; preds = %68, %63, %26
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %91 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %90, i32 0, i32 0
  %92 = load %struct.o2dlm_private*, %struct.o2dlm_private** %91, align 8
  %93 = icmp ne %struct.o2dlm_private* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %96 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %95, i32 0, i32 0
  %97 = load %struct.o2dlm_private*, %struct.o2dlm_private** %96, align 8
  %98 = call i32 @kfree(%struct.o2dlm_private* %97)
  br label %99

99:                                               ; preds = %94, %89, %86
  br label %100

100:                                              ; preds = %99, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @o2hb_check_local_node_heartbeating(...) #1

declare dso_local %struct.o2dlm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_setup_eviction_cb(i32*, i32, %struct.ocfs2_cluster_connection*) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local %struct.dlm_ctxt* @dlm_register_domain(i32, i32, %struct.dlm_protocol_version*) #1

declare dso_local i64 @IS_ERR(%struct.dlm_ctxt*) #1

declare dso_local i32 @PTR_ERR(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_register_eviction_cb(%struct.dlm_ctxt*, i32*) #1

declare dso_local i32 @kfree(%struct.o2dlm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
