; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_association = type { i64 }
%struct.sctp_hmac = type { i64, i64 }
%struct.sctp_authhdr = type { i8*, i8* }

@SCTP_CID_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_auth(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_hmac*, align 8
  %6 = alloca %struct.sctp_authhdr, align 8
  %7 = alloca i32*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = call %struct.sctp_hmac* @sctp_auth_asoc_get_hmac(%struct.sctp_association* %8)
  store %struct.sctp_hmac* %9, %struct.sctp_hmac** %5, align 8
  %10 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %11 = icmp ne %struct.sctp_hmac* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %2, align 8
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %19 = load i32, i32* @SCTP_CID_AUTH, align 4
  %20 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 4
  %24 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %18, i32 %19, i32 0, i64 %23)
  store %struct.sctp_chunk* %24, %struct.sctp_chunk** %4, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %26 = icmp ne %struct.sctp_chunk* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %2, align 8
  br label %78

28:                                               ; preds = %17
  %29 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @htons(i64 %31)
  %33 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %6, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @htons(i64 %36)
  %38 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %6, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %40 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %39, i32 4, %struct.sctp_authhdr* %6)
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32* @skb_put(i32 %46, i64 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %53 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memset(i32* %51, i32 0, i64 %54)
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @ntohs(i8* %60)
  %62 = load %struct.sctp_hmac*, %struct.sctp_hmac** %5, align 8
  %63 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i8* @htons(i64 %65)
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %68 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @skb_tail_pointer(i32 %73)
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  store %struct.sctp_chunk* %77, %struct.sctp_chunk** %2, align 8
  br label %78

78:                                               ; preds = %28, %27, %16
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  ret %struct.sctp_chunk* %79
}

declare dso_local %struct.sctp_hmac* @sctp_auth_asoc_get_hmac(%struct.sctp_association*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_authhdr*) #1

declare dso_local i32* @skb_put(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i32 @skb_tail_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
