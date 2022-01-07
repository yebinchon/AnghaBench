; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_echo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.sctp_chunk = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCTP_CID_COOKIE_ECHO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_cookie_echo(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = load i32, i32* @SCTP_CID_COOKIE_ECHO, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %16, i32 %17, i32 0, i32 %18)
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %5, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = icmp ne %struct.sctp_chunk* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %24, i32 %25, i8* %26)
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %32 = icmp ne %struct.sctp_chunk* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %23
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %41
}

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
