; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@dlm_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DLM_RCOM_NAMES_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_names(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %11 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 24
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlm_config, i32 0, i32 0), align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 24
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DLM_RCOM_NAMES_REPLY, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @create_rcom(%struct.dlm_ls* %26, i32 %27, i32 %28, i32 %29, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %36 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %44 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %46 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %47 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dlm_copy_master_names(%struct.dlm_ls* %45, i32 %48, i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %57 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %58 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %59 = call i32 @send_rcom(%struct.dlm_ls* %56, %struct.dlm_mhandle* %57, %struct.dlm_rcom* %58)
  br label %60

60:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @dlm_copy_master_names(%struct.dlm_ls*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
