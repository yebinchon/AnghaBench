; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_revoke_lo_scan_elements.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_revoke_lo_scan_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_descriptor = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@GFS2_LOG_DESC_REVOKE = common dso_local global i32 0, align 4
@GFS2_METATYPE_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32)* @revoke_lo_scan_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revoke_lo_scan_elements(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_descriptor* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_jdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_log_descriptor*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.gfs2_log_descriptor* %2, %struct.gfs2_log_descriptor** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.gfs2_sbd* @GFS2_SB(i32 %22)
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %12, align 8
  %24 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %25 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %29 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %14, align 4
  store i32 1, i32* %18, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %36 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load i32, i32* @GFS2_LOG_DESC_REVOKE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %5
  store i32 0, i32* %6, align 4
  br label %121

42:                                               ; preds = %34
  store i32 12, i32* %16, align 4
  br label %43

43:                                               ; preds = %115, %42
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %120

46:                                               ; preds = %43
  %47 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %47, i32 %48, %struct.buffer_head** %15)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %6, align 4
  br label %121

54:                                               ; preds = %46
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %60 = load i32, i32* @GFS2_METATYPE_LB, align 4
  %61 = call i32 @gfs2_metatype_check(%struct.gfs2_sbd* %58, %struct.buffer_head* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %107, %62
  %64 = load i32, i32* %16, align 4
  %65 = zext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %68 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp ule i64 %66, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %63
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be64_to_cpu(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @gfs2_revoke_add(%struct.gfs2_sbd* %83, i32 %84, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %91 = call i32 @brelse(%struct.buffer_head* %90)
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %6, align 4
  br label %121

93:                                               ; preds = %73
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %93
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, -1
  store i32 %104, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %112

107:                                              ; preds = %102
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = add i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  br label %63

112:                                              ; preds = %106, %63
  %113 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  store i32 4, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %117 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd* %116, i32* %8)
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %13, align 4
  br label %43

120:                                              ; preds = %43
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %89, %52, %41
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @gfs2_revoke_add(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_sbd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
