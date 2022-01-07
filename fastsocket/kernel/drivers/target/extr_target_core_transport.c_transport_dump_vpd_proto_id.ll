; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_dump_vpd_proto_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_dump_vpd_proto_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i32 }

@VPD_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"T10 VPD Protocol Identifier: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Fibre Channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Parallel SCSI\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SSA\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"IEEE 1394\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"SCSI Remote Direct Memory Access Protocol\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Internet SCSI (iSCSI)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"SAS Serial SCSI Protocol\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Automation/Drive Interface Transport Protocol\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"AT Attachment Interface ATA/ATAPI\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Unknown 0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_dump_vpd_proto_id(%struct.t10_vpd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_vpd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.t10_vpd* %0, %struct.t10_vpd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %18 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %65 [
    i32 0, label %20
    i32 16, label %25
    i32 32, label %30
    i32 48, label %35
    i32 64, label %40
    i32 80, label %45
    i32 96, label %50
    i32 112, label %55
    i32 128, label %60
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %13, i64 %22
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %73

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %13, i64 %27
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %73

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %13, i64 %32
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %73

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %13, i64 %37
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %73

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %13, i64 %42
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %73

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %13, i64 %47
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %73

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %13, i64 %52
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %73

55:                                               ; preds = %3
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %13, i64 %57
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %73

60:                                               ; preds = %3
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %13, i64 %62
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %73

65:                                               ; preds = %3
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %13, i64 %67
  %69 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %70 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %60, %55, %50, %45, %40, %35, %30, %25, %20
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @strncpy(i8* %77, i8* %13, i32 %78)
  br label %82

80:                                               ; preds = %73
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
