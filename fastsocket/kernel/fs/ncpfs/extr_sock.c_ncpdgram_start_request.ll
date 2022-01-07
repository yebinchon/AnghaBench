; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncpdgram_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncpdgram_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { %struct.TYPE_6__, i32, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.ncp_request_reply* }
%struct.ncp_request_reply = type { i64, i32, %struct.TYPE_4__*, %struct.ncp_request_header*, %struct.TYPE_4__* }
%struct.ncp_request_header = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.ncp_request_header* }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, %struct.ncp_request_reply*)* @ncpdgram_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncpdgram_start_request(%struct.ncp_server* %0, %struct.ncp_request_reply* %1) #0 {
  %3 = alloca %struct.ncp_server*, align 8
  %4 = alloca %struct.ncp_request_reply*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ncp_request_header*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %3, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %4, align 8
  %7 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %8 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 1
  %11 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %12 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %11, i32 0, i32 2
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %12, align 8
  %13 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %14 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.ncp_request_header*, %struct.ncp_request_header** %17, align 8
  store %struct.ncp_request_header* %18, %struct.ncp_request_header** %6, align 8
  %19 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %20 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %21 = load %struct.ncp_request_header*, %struct.ncp_request_header** %6, align 8
  %22 = call i32 @ncp_init_header(%struct.ncp_server* %19, %struct.ncp_request_reply* %20, %struct.ncp_request_header* %21)
  %23 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %24 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %25 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.ncp_request_header*, %struct.ncp_request_header** %28, align 8
  %30 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %29, i64 4
  %31 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %30, i64 -1
  %32 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %33 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %43 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @cpu_to_le32(i64 %44)
  %46 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %47 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %46, i32 0, i32 3
  %48 = load %struct.ncp_request_header*, %struct.ncp_request_header** %47, align 8
  %49 = call i64 @sign_packet(%struct.ncp_server* %23, %struct.ncp_request_header* %31, i32 %41, i32 %45, %struct.ncp_request_header* %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %2
  %53 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %54 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %53, i32 0, i32 3
  %55 = load %struct.ncp_request_header*, %struct.ncp_request_header** %54, align 8
  %56 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %57 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store %struct.ncp_request_header* %55, %struct.ncp_request_header** %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %64 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %69 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %74 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %52, %2
  %78 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %79 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %80 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.ncp_request_reply* %78, %struct.ncp_request_reply** %81, align 8
  %82 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %83 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %87 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %89 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %93 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %95 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %98 = call i32 @ncpdgram_send(i32 %96, %struct.ncp_request_reply* %97)
  %99 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %100 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %99, i32 0, i32 1
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %103 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %101, %105
  %107 = call i32 @mod_timer(i32* %100, i64 %106)
  ret void
}

declare dso_local i32 @ncp_init_header(%struct.ncp_server*, %struct.ncp_request_reply*, %struct.ncp_request_header*) #1

declare dso_local i64 @sign_packet(%struct.ncp_server*, %struct.ncp_request_header*, i32, i32, %struct.ncp_request_header*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ncpdgram_send(i32, %struct.ncp_request_reply*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
