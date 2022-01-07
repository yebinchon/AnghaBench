; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_fill_alua_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_fill_alua_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_port = type { %struct.t10_alua_tg_pt_gp_member* }
%struct.t10_alua_tg_pt_gp_member = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_port*, i8*)* @spc_fill_alua_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spc_fill_alua_data(%struct.se_port* %0, i8* %1) #0 {
  %3 = alloca %struct.se_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  store %struct.se_port* %0, %struct.se_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 5
  store i8 -128, i8* %8, align 1
  %9 = load %struct.se_port*, %struct.se_port** %3, align 8
  %10 = icmp ne %struct.se_port* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.se_port*, %struct.se_port** %3, align 8
  %14 = getelementptr inbounds %struct.se_port, %struct.se_port* %13, i32 0, i32 0
  %15 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %14, align 8
  store %struct.t10_alua_tg_pt_gp_member* %15, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %16 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %17 = icmp ne %struct.t10_alua_tg_pt_gp_member* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %21 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %23, i32 0, i32 1
  %25 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %24, align 8
  store %struct.t10_alua_tg_pt_gp* %25, %struct.t10_alua_tg_pt_gp** %5, align 8
  %26 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %27 = icmp ne %struct.t10_alua_tg_pt_gp* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %30 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 5
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  br label %39

39:                                               ; preds = %28, %19
  %40 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %41 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %18, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
