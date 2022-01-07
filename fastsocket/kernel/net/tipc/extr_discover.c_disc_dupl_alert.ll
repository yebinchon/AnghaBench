; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_disc_dupl_alert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_disc_dupl_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.print_buf = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Duplicate %s using %s seen on <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bearer*, i32, %struct.tipc_media_addr*)* @disc_dupl_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disc_dupl_alert(%struct.bearer* %0, i32 %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_media_addr*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca %struct.print_buf, align 4
  store %struct.bearer* %0, %struct.bearer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %6, align 8
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @addr_string_fill(i8* %10, i32 %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %14 = call i32 @tipc_printbuf_init(%struct.print_buf* %9, i8* %13, i32 64)
  %15 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %16 = call i32 @tipc_media_addr_printf(%struct.print_buf* %9, %struct.tipc_media_addr* %15)
  %17 = call i32 @tipc_printbuf_validate(%struct.print_buf* %9)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %20 = load %struct.bearer*, %struct.bearer** %4, align 8
  %21 = getelementptr inbounds %struct.bearer, %struct.bearer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19, i32 %23)
  ret void
}

declare dso_local i32 @addr_string_fill(i8*, i32) #1

declare dso_local i32 @tipc_printbuf_init(%struct.print_buf*, i8*, i32) #1

declare dso_local i32 @tipc_media_addr_printf(%struct.print_buf*, %struct.tipc_media_addr*) #1

declare dso_local i32 @tipc_printbuf_validate(%struct.print_buf*) #1

declare dso_local i32 @warn(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
