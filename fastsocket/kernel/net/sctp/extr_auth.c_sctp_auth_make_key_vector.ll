; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_make_key_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_make_key_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @sctp_auth_make_key_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_make_key_vector(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_auth_bytes*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_auth_bytes*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %26, %4
  %35 = load i64, i64* %11, align 8
  %36 = add i64 16, %35
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.sctp_auth_bytes* @kmalloc(i64 %36, i32 %37)
  store %struct.sctp_auth_bytes* %38, %struct.sctp_auth_bytes** %10, align 8
  %39 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %40 = icmp ne %struct.sctp_auth_bytes* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %5, align 8
  br label %99

42:                                               ; preds = %34
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %45 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %47 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = call i32 @memcpy(i64 %48, %struct.TYPE_10__* %49, i64 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %12, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %42
  %66 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %67 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ntohs(i32 %75)
  %77 = call i32 @memcpy(i64 %70, %struct.TYPE_10__* %71, i64 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %65, %42
  %86 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %87 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = call i32 @memcpy(i64 %90, %struct.TYPE_10__* %91, i64 %96)
  %98 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  store %struct.sctp_auth_bytes* %98, %struct.sctp_auth_bytes** %5, align 8
  br label %99

99:                                               ; preds = %85, %41
  %100 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  ret %struct.sctp_auth_bytes* %100
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_auth_bytes* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
