; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_setup_write_same.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_setup_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sbc_ops = type { i64, i64 }

@.str = private unnamed_addr constant [77 x i8] c"WRITE_SAME PBDATA and LBDATA bits not supported for Block Discard Emulation\0A\00", align 1
@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"WRITE_SAME sectors: %u exceeds max_write_same_len: %u\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*, %struct.sbc_ops*)* @sbc_setup_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_setup_write_same(%struct.se_cmd* %0, i8* %1, %struct.sbc_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sbc_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sbc_ops* %2, %struct.sbc_ops** %7, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %10 = call i32 @sbc_get_write_same_sectors(%struct.se_cmd* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %26, i32* %4, align 4
  br label %79

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ugt i32 %28, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %45, i32* %4, align 4
  br label %79

46:                                               ; preds = %27
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %55 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %59, i32* %4, align 4
  br label %79

60:                                               ; preds = %53
  %61 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %62 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %4, align 4
  br label %79

66:                                               ; preds = %46
  %67 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %68 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %66
  %74 = load %struct.sbc_ops*, %struct.sbc_ops** %7, align 8
  %75 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %71, %60, %58, %36, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @sbc_get_write_same_sectors(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
