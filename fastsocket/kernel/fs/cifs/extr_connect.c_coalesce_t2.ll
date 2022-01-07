; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_coalesce_t2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_coalesce_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i32 }
%struct.smb_t2_rsp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"total data count of primary and secondary t2 differ source=%hu target=%hu\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Server sent too much data. tgt_total_cnt=%hu total_in_tgt=%hu\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no more data remains\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"transact2 2nd response contains too much data\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"coalesced DataCount too large (%u)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"coalesced BCC too large (%u)\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"coalesced BCC exceeds buffer size (%u)\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"waiting for more secondary responses\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"found the last secondary response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.smb_hdr*)* @coalesce_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesce_t2(i8* %0, %struct.smb_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smb_hdr*, align 8
  %6 = alloca %struct.smb_t2_rsp*, align 8
  %7 = alloca %struct.smb_t2_rsp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %17, %struct.smb_t2_rsp** %6, align 8
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %19 = bitcast %struct.smb_hdr* %18 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %19, %struct.smb_t2_rsp** %7, align 8
  %20 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = call i32 @get_unaligned_le16(i32* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %25 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @get_unaligned_le16(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %37 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @get_unaligned_le16(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %159

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %159

56:                                               ; preds = %51
  %57 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %58 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @get_unaligned_le16(i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  %67 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %68 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  %71 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %72 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = call i32 @get_unaligned_le16(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8* %76, i8** %8, align 8
  %77 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %78 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = bitcast i32* %79 to i8*
  %81 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %82 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = call i32 @get_unaligned_le16(i32* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %80, i64 %85
  store i8* %86, i8** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @USHRT_MAX, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %66
  %98 = load i32, i32* %12, align 4
  %99 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EPROTO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %159

102:                                              ; preds = %66
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %105 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @put_unaligned_le16(i32 %103, i32* %106)
  %108 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %109 = call i32 @get_bcc(%struct.smb_hdr* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @USHRT_MAX, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load i32, i32* %11, align 4
  %118 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EPROTO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %159

121:                                              ; preds = %102
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %124 = call i32 @put_bcc(i32 %122, %struct.smb_hdr* %123)
  %125 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %126 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @be32_to_cpu(i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @CIFSMaxBufSize, align 4
  %134 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %135, 4
  %137 = icmp ugt i32 %132, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %121
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ENOBUFS, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %159

143:                                              ; preds = %121
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @cpu_to_be32(i32 %144)
  %146 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %147 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @memcpy(i8* %148, i8* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %159

157:                                              ; preds = %143
  %158 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %155, %138, %116, %97, %54, %45
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i32 @put_bcc(i32, %struct.smb_hdr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
