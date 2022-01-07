; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_mtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.timespec = type { i32 }

@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i32*, %struct.timespec*)* @encode_attr_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_attr_mtime(%struct.xdr_stream* %0, i32* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.timespec*, %struct.timespec** %7, align 8
  %18 = call i32 @encode_attr_time(%struct.xdr_stream* %16, %struct.timespec* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @encode_attr_time(%struct.xdr_stream*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
