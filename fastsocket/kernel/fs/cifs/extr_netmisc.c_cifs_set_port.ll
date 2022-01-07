; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cifs_set_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cifs_set_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_set_port(%struct.sockaddr* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i16, align 2
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %2
  %10 = load i16, i16* %5, align 2
  %11 = call i8* @htons(i16 zeroext %10)
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i16, i16* %5, align 2
  %17 = call i8* @htons(i16 zeroext %16)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in6*
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

22:                                               ; preds = %15, %9
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
