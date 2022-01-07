; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_show_tg_pt_gp_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_show_tg_pt_gp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_port = type { i32, i32, %struct.t10_alua_tg_pt_gp_member* }
%struct.t10_alua_tg_pt_gp_member = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.config_item }
%struct.config_item = type { i32 }

@.str = private unnamed_addr constant [179 x i8] c"TG Port Alias: %s\0ATG Port Group ID: %hu\0ATG Port Primary Access State: %s\0ATG Port Primary Access Status: %s\0ATG Port Secondary Access State: %s\0ATG Port Secondary Access Status: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Offline\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_alua_show_tg_pt_gp_info(%struct.se_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %8 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  %9 = alloca i32, align 4
  store %struct.se_port* %0, %struct.se_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.se_port*, %struct.se_port** %4, align 8
  %11 = getelementptr inbounds %struct.se_port, %struct.se_port* %10, i32 0, i32 2
  %12 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  store %struct.t10_alua_tg_pt_gp_member* %12, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %13 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %14 = icmp ne %struct.t10_alua_tg_pt_gp_member* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %19 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %22 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %21, i32 0, i32 1
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %22, align 8
  store %struct.t10_alua_tg_pt_gp* %23, %struct.t10_alua_tg_pt_gp** %7, align 8
  %24 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %25 = icmp ne %struct.t10_alua_tg_pt_gp* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %17
  %27 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %28 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.config_item* %29, %struct.config_item** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.config_item*, %struct.config_item** %6, align 8
  %32 = call i8* @config_item_name(%struct.config_item* %31)
  %33 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %34 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %37 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %36, i32 0, i32 2
  %38 = call i64 @atomic_read(i32* %37)
  %39 = call i8* @core_alua_dump_state(i64 %38)
  %40 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %41 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @core_alua_dump_status(i32 %42)
  %44 = load %struct.se_port*, %struct.se_port** %4, align 8
  %45 = getelementptr inbounds %struct.se_port, %struct.se_port* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %50 = load %struct.se_port*, %struct.se_port** %4, align 8
  %51 = getelementptr inbounds %struct.se_port, %struct.se_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @core_alua_dump_status(i32 %52)
  %54 = call i64 @sprintf(i8* %30, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %35, i8* %39, i8* %43, i8* %49, i8* %53)
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %26, %17
  %60 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %61 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @config_item_name(%struct.config_item*) #1

declare dso_local i8* @core_alua_dump_state(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i8* @core_alua_dump_status(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
