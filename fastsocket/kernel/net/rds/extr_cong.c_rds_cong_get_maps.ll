; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_get_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_get_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cong_get_maps(%struct.rds_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %5 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @rds_cong_from_addr(i32 %6)
  %8 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @rds_cong_from_addr(i32 %12)
  %14 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %17 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %22 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @rds_cong_from_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
