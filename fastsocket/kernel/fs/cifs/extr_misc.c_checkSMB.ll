; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_checkSMB.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_checkSMB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"checkSMB Length: 0x%x, smb_buf_length: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rcvd invalid byte count (bcc)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Length less than smb header size\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Length read does not match RFC1001 length %d\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Calculated size %u vs length %u mismatch for mid=%u\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"RFC1001 size %u smaller than SMB for mid=%u\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"RFC1001 size %u more than 512 bytes larger than SMB for mid=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkSMB(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.smb_hdr*
  store %struct.smb_hdr* %12, %struct.smb_hdr** %6, align 8
  %13 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %14 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, i32, i32, ...) @cFYI(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %24, 34
  br i1 %25, label %26, label %67

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp uge i64 %28, 31
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %144

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %41, 33
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %50 = bitcast %struct.smb_hdr* %49 to i8*
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 32
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 33
  store i8 0, i8* %58, align 1
  store i32 0, i32* %3, align 4
  br label %144

59:                                               ; preds = %48
  %60 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %63

61:                                               ; preds = %43, %39
  %62 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %144

67:                                               ; preds = %2
  %68 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @check_smb_hdr(%struct.smb_hdr* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %67
  %76 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %77 = call i32 @smbCalcSize(%struct.smb_hdr* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 4, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %144

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 4, %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 65536
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 4, %100
  %102 = and i32 %101, 65535
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %144

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %95, %92
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 4, %110
  %112 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %113 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, i32, i32, ...) @cFYI(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %111, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 4, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %123 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %144

128:                                              ; preds = %108
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 512
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %136 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %144

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %87
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %133, %120, %106, %82, %72, %64, %56, %36
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i64 @check_smb_hdr(%struct.smb_hdr*, i32) #1

declare dso_local i32 @smbCalcSize(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
