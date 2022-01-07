; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_sockstat6_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_sockstat6_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"TCP6: inuse %d\0A\00", align 1
@tcpv6_prot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"UDP6: inuse %d\0A\00", align 1
@udpv6_prot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"UDPLITE6: inuse %d\0A\00", align 1
@udplitev6_prot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"RAW6: inuse %d\0A\00", align 1
@rawv6_prot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"FRAG6: inuse %d memory %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sockstat6_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockstat6_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.net*, %struct.net** %7, align 8
  store %struct.net* %8, %struct.net** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = call i32 @sock_prot_inuse_get(%struct.net* %10, i32* @tcpv6_prot)
  %12 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = call i32 @sock_prot_inuse_get(%struct.net* %14, i32* @udpv6_prot)
  %16 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = call i32 @sock_prot_inuse_get(%struct.net* %18, i32* @udplitev6_prot)
  %20 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = call i32 @sock_prot_inuse_get(%struct.net* %22, i32* @rawv6_prot)
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = call i32 @ip6_frag_nqueues(%struct.net* %26)
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = call i32 @ip6_frag_mem(%struct.net* %28)
  %30 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %29)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @sock_prot_inuse_get(%struct.net*, i32*) #1

declare dso_local i32 @ip6_frag_nqueues(%struct.net*) #1

declare dso_local i32 @ip6_frag_mem(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
