; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_decode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_decode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nlm_lock = type { i64, i32, i32, i32, i32, %struct.file_lock }
%struct.file_lock = type { i8*, i8*, i32, i32, i64, i32 }

@NLM_MAXSTRLEN = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_lock*)* @nlm4_decode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm4_decode_lock(i32* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlm_lock*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %5, align 8
  %10 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %10, i32 0, i32 5
  store %struct.file_lock* %11, %struct.file_lock** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %13, i32 0, i32 4
  %15 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %16 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %15, i32 0, i32 3
  %17 = load i32, i32* @NLM_MAXSTRLEN, align 4
  %18 = call i32* @xdr_decode_string_inplace(i32* %12, i32* %14, i32* %16, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %23 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %22, i32 0, i32 2
  %24 = call i32* @nlm4_decode_fh(i32* %21, i32* %23)
  store i32* %24, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %29 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %28, i32 0, i32 1
  %30 = call i32* @nlm4_decode_oh(i32* %27, i32* %29)
  store i32* %30, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %20, %2
  store i32* null, i32** %3, align 8
  br label %86

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  %36 = load i32, i32* %34, align 4
  %37 = call i64 @ntohl(i32 %36)
  %38 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %39 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %41 = call i32 @locks_init_lock(%struct.file_lock* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %46 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %48 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @FL_POSIX, align 4
  %53 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @F_RDLCK, align 4
  %56 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @xdr_decode_hyper(i32* %58, i64* %8)
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* @xdr_decode_hyper(i32* %60, i64* %7)
  store i32* %61, i32** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %62, %63
  %65 = sub nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i8* @s64_to_loff_t(i64 %66)
  %68 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %33
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %33
  %76 = load i8*, i8** @OFFSET_MAX, align 8
  %77 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = call i8* @s64_to_loff_t(i64 %80)
  %82 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %83 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32*, i32** %4, align 8
  store i32* %85, i32** %3, align 8
  br label %86

86:                                               ; preds = %84, %32
  %87 = load i32*, i32** %3, align 8
  ret i32* %87
}

declare dso_local i32* @xdr_decode_string_inplace(i32*, i32*, i32*, i32) #1

declare dso_local i32* @nlm4_decode_fh(i32*, i32*) #1

declare dso_local i32* @nlm4_decode_oh(i32*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i64*) #1

declare dso_local i8* @s64_to_loff_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
