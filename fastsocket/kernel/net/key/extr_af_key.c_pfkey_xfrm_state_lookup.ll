; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_state_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_state_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.net = type { i32 }
%struct.sadb_msg = type { i32 }
%struct.sadb_sa = type { i32 }
%struct.sadb_address = type { i32 }
%struct.sockaddr = type { i16 }
%struct.sockaddr_in = type { i32 }

@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@DUMMY_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net*, %struct.sadb_msg*, i8**)* @pfkey_xfrm_state_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @pfkey_xfrm_state_lookup(%struct.net* %0, %struct.sadb_msg* %1, i8** %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sadb_msg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.sadb_sa*, align 8
  %9 = alloca %struct.sadb_address*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sadb_msg* %1, %struct.sadb_msg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i32, i32* @SADB_EXT_SA, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.sadb_sa*
  store %struct.sadb_sa* %19, %struct.sadb_sa** %8, align 8
  %20 = load %struct.sadb_sa*, %struct.sadb_sa** %8, align 8
  %21 = icmp eq %struct.sadb_sa* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %25 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pfkey_satype2proto(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %70

31:                                               ; preds = %23
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.sadb_address*
  store %struct.sadb_address* %38, %struct.sadb_address** %9, align 8
  %39 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %40 = icmp eq %struct.sadb_address* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %70

42:                                               ; preds = %31
  %43 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %44 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %43, i64 1
  %45 = bitcast %struct.sadb_address* %44 to %struct.sockaddr*
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %11, align 2
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i32
  switch i32 %49, label %55 [
    i32 129, label %50
  ]

50:                                               ; preds = %42
  %51 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %52 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %51, i64 1
  %53 = bitcast %struct.sadb_address* %52 to %struct.sockaddr_in*
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  store i32* %54, i32** %12, align 8
  br label %56

55:                                               ; preds = %42
  store i32* null, i32** %12, align 8
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %70

60:                                               ; preds = %56
  %61 = load %struct.net*, %struct.net** %5, align 8
  %62 = load i32, i32* @DUMMY_MARK, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load %struct.sadb_sa*, %struct.sadb_sa** %8, align 8
  %65 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i16, i16* %11, align 2
  %69 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net* %61, i32 %62, i32* %63, i32 %66, i64 %67, i16 zeroext %68)
  store %struct.xfrm_state* %69, %struct.xfrm_state** %4, align 8
  br label %70

70:                                               ; preds = %60, %59, %41, %30, %22
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  ret %struct.xfrm_state* %71
}

declare dso_local i64 @pfkey_satype2proto(i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(%struct.net*, i32, i32*, i32, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
