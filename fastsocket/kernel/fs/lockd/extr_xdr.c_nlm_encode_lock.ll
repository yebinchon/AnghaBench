; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlm_encode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlm_encode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_lock = type { i64, i32, i32, i32, %struct.file_lock }
%struct.file_lock = type { i64, i64 }

@NLM_OFFSET_MAX = common dso_local global i64 0, align 8
@OFFSET_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_lock*)* @nlm_encode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm_encode_lock(i32* %0, %struct.nlm_lock* %1) #0 {
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
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @xdr_encode_string(i32* %11, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %19, i32 0, i32 2
  %21 = call i32* @nlm_encode_fh(i32* %18, i32* %20)
  store i32* %21, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %26 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %25, i32 0, i32 1
  %27 = call i32* @nlm_encode_oh(i32* %24, i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %17, %2
  store i32* null, i32** %3, align 8
  br label %89

30:                                               ; preds = %23
  %31 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NLM_OFFSET_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NLM_OFFSET_MAX, align 8
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
  br label %89

49:                                               ; preds = %42, %36
  %50 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @loff_t_to_s32(i64 %52)
  store i64 %53, i64* %7, align 8
  %54 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OFFSET_MAX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  br label %70

60:                                               ; preds = %49
  %61 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = add nsw i64 %67, 1
  %69 = call i64 @loff_t_to_s32(i64 %68)
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %60, %59
  %71 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %72 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @htonl(i64 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i64, i64* %7, align 8
  %79 = call i8* @htonl(i64 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %4, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i8* @htonl(i64 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %4, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  store i32* %88, i32** %3, align 8
  br label %89

89:                                               ; preds = %70, %48, %29
  %90 = load i32*, i32** %3, align 8
  ret i32* %90
}

declare dso_local i32* @xdr_encode_string(i32*, i32) #1

declare dso_local i32* @nlm_encode_fh(i32*, i32*) #1

declare dso_local i32* @nlm_encode_oh(i32*, i32*) #1

declare dso_local i64 @loff_t_to_s32(i64) #1

declare dso_local i8* @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
