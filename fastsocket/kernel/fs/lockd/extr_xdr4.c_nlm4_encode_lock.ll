; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_lock = type { i32, i32, i32, i32, %struct.file_lock }
%struct.file_lock = type { i64, i64 }

@NLM4_OFFSET_MAX = common dso_local global i64 0, align 8
@OFFSET_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_lock*)* @nlm4_encode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm4_encode_lock(i32* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlm_lock*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %5, align 8
  %9 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %10 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %9, i32 0, i32 4
  store %struct.file_lock* %10, %struct.file_lock** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %13 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @xdr_encode_string(i32* %11, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %19, i32 0, i32 2
  %21 = call i32* @nlm4_encode_fh(i32* %18, i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %26 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %25, i32 0, i32 1
  %27 = call i32* @nlm4_encode_oh(i32* %24, i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %17, %2
  store i32* null, i32** %3, align 8
  br label %84

30:                                               ; preds = %23
  %31 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NLM4_OFFSET_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NLM4_OFFSET_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OFFSET_MAX, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %30
  store i32* null, i32** %3, align 8
  br label %84

49:                                               ; preds = %42, %36
  %50 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %51 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @htonl(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @loff_t_to_s64(i64 %58)
  store i64 %59, i64* %7, align 8
  %60 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %61 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OFFSET_MAX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  br label %76

66:                                               ; preds = %49
  %67 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = add nsw i64 %73, 1
  %75 = call i64 @loff_t_to_s64(i64 %74)
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %66, %65
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32* @xdr_encode_hyper(i32* %77, i64 %78)
  store i32* %79, i32** %4, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32* @xdr_encode_hyper(i32* %80, i64 %81)
  store i32* %82, i32** %4, align 8
  %83 = load i32*, i32** %4, align 8
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %76, %48, %29
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32* @xdr_encode_string(i32*, i32) #1

declare dso_local i32* @nlm4_encode_fh(i32*, i32*) #1

declare dso_local i32* @nlm4_encode_oh(i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @loff_t_to_s64(i64) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
