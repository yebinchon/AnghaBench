; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_delete_sec_context_spkm3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_gss_delete_sec_context_spkm3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spkm3_ctx = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.spkm3_ctx* }
%struct.TYPE_11__ = type { %struct.spkm3_ctx* }
%struct.TYPE_10__ = type { %struct.spkm3_ctx* }
%struct.TYPE_9__ = type { %struct.spkm3_ctx* }
%struct.TYPE_8__ = type { %struct.spkm3_ctx* }
%struct.TYPE_7__ = type { %struct.spkm3_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gss_delete_sec_context_spkm3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_delete_sec_context_spkm3(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spkm3_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.spkm3_ctx*
  store %struct.spkm3_ctx* %5, %struct.spkm3_ctx** %3, align 8
  %6 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %8, align 8
  %10 = call i32 @kfree(%struct.spkm3_ctx* %9)
  %11 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %13, align 8
  %15 = call i32 @kfree(%struct.spkm3_ctx* %14)
  %16 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %18, align 8
  %20 = call i32 @kfree(%struct.spkm3_ctx* %19)
  %21 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %23, align 8
  %25 = call i32 @kfree(%struct.spkm3_ctx* %24)
  %26 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %28, align 8
  %30 = call i32 @kfree(%struct.spkm3_ctx* %29)
  %31 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %33, align 8
  %35 = call i32 @kfree(%struct.spkm3_ctx* %34)
  %36 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %3, align 8
  %37 = call i32 @kfree(%struct.spkm3_ctx* %36)
  ret void
}

declare dso_local i32 @kfree(%struct.spkm3_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
