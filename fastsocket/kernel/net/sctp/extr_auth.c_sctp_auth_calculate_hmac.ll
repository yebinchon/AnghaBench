; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_calculate_hmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_calculate_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, %struct.TYPE_3__*, %struct.sctp_auth_bytes* }
%struct.TYPE_3__ = type { i32* }
%struct.sctp_auth_bytes = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.sctp_auth_chunk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.hash_desc = type { i32, i64 }
%struct.sctp_shared_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_calculate_hmac(%struct.sctp_association* %0, %struct.sk_buff* %1, %struct.sctp_auth_chunk* %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sctp_auth_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca %struct.hash_desc, align 8
  %11 = alloca %struct.sctp_auth_bytes*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sctp_shared_key*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sctp_auth_chunk* %2, %struct.sctp_auth_chunk** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %7, align 8
  %24 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ntohs(i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 2
  %36 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %35, align 8
  store %struct.sctp_auth_bytes* %36, %struct.sctp_auth_bytes** %11, align 8
  br label %53

37:                                               ; preds = %4
  %38 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association* %38, i64 %39)
  store %struct.sctp_shared_key* %40, %struct.sctp_shared_key** %17, align 8
  %41 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %17, align 8
  %42 = icmp ne %struct.sctp_shared_key* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %102

44:                                               ; preds = %37
  %45 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %46 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %17, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association* %45, %struct.sctp_shared_key* %46, i32 %47)
  store %struct.sctp_auth_bytes* %48, %struct.sctp_auth_bytes** %11, align 8
  %49 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %50 = icmp ne %struct.sctp_auth_bytes* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %102

52:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i8* @skb_tail_pointer(%struct.sk_buff* %54)
  store i8* %55, i8** %15, align 8
  %56 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %7, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %7, align 8
  %59 = bitcast %struct.sctp_auth_chunk* %58 to i8*
  %60 = ptrtoint i8* %57 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @sg_init_one(%struct.scatterlist* %9, %struct.sctp_auth_chunk* %56, i32 %63)
  %65 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %10, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %10, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.sctp_auth_chunk*, %struct.sctp_auth_chunk** %7, align 8
  %76 = getelementptr inbounds %struct.sctp_auth_chunk, %struct.sctp_auth_chunk* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %14, align 8
  %79 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %82 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %86 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @crypto_hash_setkey(i32 %80, i32* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %53
  br label %96

91:                                               ; preds = %53
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @crypto_hash_digest(%struct.hash_desc* %10, %struct.scatterlist* %9, i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %91, %90
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  %101 = call i32 @sctp_auth_key_put(%struct.sctp_auth_bytes* %100)
  br label %102

102:                                              ; preds = %43, %51, %99, %96
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association*, %struct.sctp_shared_key*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.sctp_auth_chunk*, i32) #1

declare dso_local i64 @crypto_hash_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @sctp_auth_key_put(%struct.sctp_auth_bytes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
