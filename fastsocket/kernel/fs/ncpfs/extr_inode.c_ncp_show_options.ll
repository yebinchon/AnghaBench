; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.ncp_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c",owner=%u\00", align 1
@S_IALLUGO = common dso_local global i32 0, align 4
@NCP_DEFAULT_FILE_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c",mode=0%o\00", align 1
@NCP_DEFAULT_DIR_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c",dirmode=0%o\00", align 1
@NCP_DEFAULT_TIME_OUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c",timeout=%u\00", align 1
@NCP_DEFAULT_RETRY_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c",retry=%u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c",flags=%lu\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c",wdogpid=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @ncp_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.ncp_server*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ncp_server* @NCP_SBP(i32 %9)
  store %struct.ncp_server* %10, %struct.ncp_server** %5, align 8
  %11 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %12 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %19 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %26 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %33 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %40 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %47 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %54 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @S_IALLUGO, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NCP_DEFAULT_FILE_MODE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %68 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_IALLUGO, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @NCP_DEFAULT_DIR_MODE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %66
  %81 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %82 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NCP_DEFAULT_TIME_OUT, align 4
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sdiv i32 %87, 100
  %89 = icmp ne i32 %84, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %92 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 100
  %96 = load i32, i32* @HZ, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %90, %80
  %102 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %103 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NCP_DEFAULT_RETRY_COUNT, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %111 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %117 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %124 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %130 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %137 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @pid_vnr(i32* %139)
  %141 = call i32 @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %134, %128
  ret i32 0
}

declare dso_local %struct.ncp_server* @NCP_SBP(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @pid_vnr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
