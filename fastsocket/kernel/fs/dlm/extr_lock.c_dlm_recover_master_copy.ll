; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_recover_master_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_recover_master_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rcom_lock = type { i8*, i32, i8*, i32, i32, i32, i64 }
%struct.dlm_rsb = type { i32, i32 }
%struct.dlm_lkb = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@R_MASTER = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@RSB_RECOVER_GRANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"recover_master_copy %d %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_recover_master_copy(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.rcom_lock*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %9 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rcom_lock*
  store %struct.rcom_lock* %12, %struct.rcom_lock** %5, align 8
  %13 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %14 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %22 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %23 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %26 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load i32, i32* @R_MASTER, align 4
  %30 = call i32 @find_rsb(%struct.dlm_ls* %21, i32 %24, i32 %28, i32 %29, %struct.dlm_rsb** %6)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %106

34:                                               ; preds = %20
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %36 = call i32 @lock_rsb(%struct.dlm_rsb* %35)
  %37 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %38 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %43 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call %struct.dlm_lkb* @search_remid(%struct.dlm_rsb* %37, i32 %41, i32 %45)
  store %struct.dlm_lkb* %46, %struct.dlm_lkb** %7, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %48 = icmp ne %struct.dlm_lkb* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %94

52:                                               ; preds = %34
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %54 = call i32 @create_lkb(%struct.dlm_ls* %53, %struct.dlm_lkb** %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %101

58:                                               ; preds = %52
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %61 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %62 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %63 = call i32 @receive_rcom_lock_args(%struct.dlm_ls* %59, %struct.dlm_lkb* %60, %struct.dlm_rsb* %61, %struct.dlm_rcom* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %69 = call i32 @__put_lkb(%struct.dlm_ls* %67, %struct.dlm_lkb* %68)
  br label %101

70:                                               ; preds = %58
  %71 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %72 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %73 = call i32 @attach_lkb(%struct.dlm_rsb* %71, %struct.dlm_lkb* %72)
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %75 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %76 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %77 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @add_lkb(%struct.dlm_rsb* %74, %struct.dlm_lkb* %75, i32 %78)
  store i32 0, i32* %8, align 4
  %80 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %81 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %80, i32 0, i32 1
  %82 = call i32 @list_empty(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %70
  %85 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %86 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %85, i32 0, i32 0
  %87 = call i32 @list_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84, %70
  %90 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %91 = load i32, i32* @RSB_RECOVER_GRANT, align 4
  %92 = call i32 @rsb_set_flag(%struct.dlm_rsb* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93, %49
  %95 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %96 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %100 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %66, %57
  %102 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %103 = call i32 @unlock_rsb(%struct.dlm_rsb* %102)
  %104 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %105 = call i32 @put_rsb(%struct.dlm_rsb* %104)
  br label %106

106:                                              ; preds = %101, %33, %17
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %113 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = call i32 @log_debug(%struct.dlm_ls* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %109, %106
  %118 = load i32, i32* %8, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %121 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local %struct.dlm_lkb* @search_remid(%struct.dlm_rsb*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @create_lkb(%struct.dlm_ls*, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_rcom_lock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_rsb*, %struct.dlm_rcom*) #1

declare dso_local i32 @__put_lkb(%struct.dlm_ls*, %struct.dlm_lkb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @add_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
