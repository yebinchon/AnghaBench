; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_do_disk_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_do_disk_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32*, i32 }
%struct.o2hb_bio_wait_ctxt = type { i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ocfs2_heartbeat: no configured nodes found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Device \22%s\22: another node is heartbeating in our slot!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Write error %d on device \22%s\22\0A\00", align 1
@o2hb_steady_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_do_disk_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_do_disk_heartbeat(%struct.o2hb_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.o2hb_bio_wait_ctxt, align 4
  %11 = alloca i32, align 4
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @O2NM_MAX_NODES, align 4
  %13 = call i32 @BITS_TO_LONGS(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = mul nuw i64 8, %14
  %18 = trunc i64 %17 to i32
  %19 = call i32 @o2nm_configured_node_map(i64* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load i32, i32* @O2NM_MAX_NODES, align 4
  %28 = call i32 @o2hb_highest_node(i64* %16, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @O2NM_MAX_NODES, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @ML_NOTICE, align 4
  %34 = call i32 (i32, i8*, ...) @mlog(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

37:                                               ; preds = %26
  %38 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @o2hb_read_slots(%struct.o2hb_region* %38, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

48:                                               ; preds = %37
  %49 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %50 = call i32 @o2hb_check_last_timestamp(%struct.o2hb_region* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ML_ERROR, align 4
  %54 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %55 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @mlog(i32 %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %60 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %61 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @o2hb_prepare_block(%struct.o2hb_region* %59, i32 %62)
  %64 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %65 = call i32 @o2hb_issue_node_write(%struct.o2hb_region* %64, %struct.o2hb_bio_wait_ctxt* %10)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

72:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %73

73:                                               ; preds = %80, %72
  %74 = load i32, i32* @O2NM_MAX_NODES, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @find_next_bit(i64* %16, i32 %74, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @O2NM_MAX_NODES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %82 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %83 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @o2hb_check_slot(%struct.o2hb_region* %81, i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %73

91:                                               ; preds = %73
  %92 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %93 = call i32 @o2hb_wait_on_io(%struct.o2hb_region* %92, %struct.o2hb_bio_wait_ctxt* %10)
  %94 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %102 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @mlog(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %103)
  %105 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %10, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

107:                                              ; preds = %91
  %108 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %109 = call i32 @o2hb_arm_write_timeout(%struct.o2hb_region* %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %107
  %113 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %114 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %113, i32 0, i32 0
  %115 = call i64 @atomic_read(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %119 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %118, i32 0, i32 0
  %120 = call i64 @atomic_dec_and_test(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @wake_up(i32* @o2hb_steady_queue)
  br label %124

124:                                              ; preds = %122, %117
  br label %125

125:                                              ; preds = %124, %112, %107
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %97, %68, %44, %32, %22
  %127 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @o2nm_configured_node_map(i64*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @o2hb_highest_node(i64*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @o2hb_read_slots(%struct.o2hb_region*, i32) #1

declare dso_local i32 @o2hb_check_last_timestamp(%struct.o2hb_region*) #1

declare dso_local i32 @o2hb_prepare_block(%struct.o2hb_region*, i32) #1

declare dso_local i32 @o2hb_issue_node_write(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @o2hb_check_slot(%struct.o2hb_region*, i32*) #1

declare dso_local i32 @o2hb_wait_on_io(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

declare dso_local i32 @o2hb_arm_write_timeout(%struct.o2hb_region*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
