; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_do_sm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_do_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* }

@sctp_do_sm.table = internal global [5 x i8* (i32)*] [i8* (i32)* null, i8* (i32)* inttoptr (i64 131 to i8* (i32)*), i8* (i32)* inttoptr (i64 128 to i8* (i32)*), i8* (i32)* inttoptr (i64 130 to i8* (i32)*), i8* (i32)* inttoptr (i64 129 to i8* (i32)*)], align 16
@DEBUG_PRE = common dso_local global i32 0, align 4
@DEBUG_POST = common dso_local global i32 0, align 4
@DEBUG_POST_SFX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_do_sm(i64 %0, i32 %1, i32 %2, %struct.sctp_endpoint* %3, %struct.sctp_association* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_endpoint*, align 8
  %12 = alloca %struct.sctp_association*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8* (i32)*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.sctp_endpoint* %3, %struct.sctp_endpoint** %11, align 8
  store %struct.sctp_association* %4, %struct.sctp_association** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds [5 x i8* (i32)*], [5 x i8* (i32)*]* @sctp_do_sm.table, i64 0, i64 %20
  %22 = load i8* (i32)*, i8* (i32)** %21, align 8
  store i8* (i32)* %22, i8* (i32)** %19, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_3__* @sctp_sm_lookup_event(i64 %23, i32 %24, i32 %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %16, align 8
  %27 = call i32 @sctp_init_cmd_seq(i32* %15)
  %28 = load i32, i32* @DEBUG_PRE, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)*, i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)** %30, align 8
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 %31(%struct.sctp_endpoint* %32, %struct.sctp_association* %33, i32 %34, i8* %35, i32* %15)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* @DEBUG_POST, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @sctp_side_effects(i64 %38, i32 %39, i32 %40, %struct.sctp_endpoint* %41, %struct.sctp_association* %42, i8* %43, i32 %44, i32* %15, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* @DEBUG_POST_SFX, align 4
  %48 = load i32, i32* %18, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_3__* @sctp_sm_lookup_event(i64, i32, i32) #1

declare dso_local i32 @sctp_init_cmd_seq(i32*) #1

declare dso_local i32 @sctp_side_effects(i64, i32, i32, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
