; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_update_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_update_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rds_connection = type { %struct.rds_cong_map* }
%struct.rds_cong_map = type { i32 }

@RDS_CONG_MAP_BYTES = common dso_local global i32 0, align 4
@RDS_FLAG_CONG_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_message* @rds_cong_update_alloc(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_cong_map*, align 8
  %4 = alloca %struct.rds_message*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %5 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %5, i32 0, i32 0
  %7 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  store %struct.rds_cong_map* %7, %struct.rds_cong_map** %3, align 8
  %8 = load %struct.rds_cong_map*, %struct.rds_cong_map** %3, align 8
  %9 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RDS_CONG_MAP_BYTES, align 4
  %12 = call %struct.rds_message* @rds_message_map_pages(i32 %10, i32 %11)
  store %struct.rds_message* %12, %struct.rds_message** %4, align 8
  %13 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %14 = call i32 @IS_ERR(%struct.rds_message* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @RDS_FLAG_CONG_BITMAP, align 4
  %18 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %19 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  ret %struct.rds_message* %23
}

declare dso_local %struct.rds_message* @rds_message_map_pages(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.rds_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
