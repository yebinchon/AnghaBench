; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_first_free_socketnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_first_free_socketnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i16, i32 }

@IPX_MIN_EPHEMERAL_SOCKET = common dso_local global i16 0, align 2
@IPX_MAX_EPHEMERAL_SOCKET = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_interface*)* @ipx_first_free_socketnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_first_free_socketnum(%struct.ipx_interface* %0) #0 {
  %2 = alloca %struct.ipx_interface*, align 8
  %3 = alloca i16, align 2
  store %struct.ipx_interface* %0, %struct.ipx_interface** %2, align 8
  %4 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %5 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 4
  store i16 %6, i16* %3, align 2
  %7 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %8 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @IPX_MIN_EPHEMERAL_SOCKET, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i16, i16* @IPX_MIN_EPHEMERAL_SOCKET, align 2
  store i16 %16, i16* %3, align 2
  br label %17

17:                                               ; preds = %15, %1
  br label %18

18:                                               ; preds = %35, %17
  %19 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %20 = load i16, i16* %3, align 2
  %21 = call i32 @htons(i16 zeroext %20)
  %22 = call i64 @__ipxitf_find_socket(%struct.ipx_interface* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @IPX_MAX_EPHEMERAL_SOCKET, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i16, i16* @IPX_MIN_EPHEMERAL_SOCKET, align 2
  store i16 %31, i16* %3, align 2
  br label %35

32:                                               ; preds = %24
  %33 = load i16, i16* %3, align 2
  %34 = add i16 %33, 1
  store i16 %34, i16* %3, align 2
  br label %35

35:                                               ; preds = %32, %30
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %38 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load i16, i16* %3, align 2
  %41 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %42 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 4
  %43 = load i16, i16* %3, align 2
  %44 = call i32 @htons(i16 zeroext %43)
  ret i32 %44
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @__ipxitf_find_socket(%struct.ipx_interface*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
