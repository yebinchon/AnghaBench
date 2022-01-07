; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_lookup_std_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_lookup_std_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_decl = type { i32 }

@HASH_SIZE = common dso_local global i32 0, align 4
@hash_tab = common dso_local global i64* null, align 8
@std_protos = common dso_local global %struct.fn_decl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fn_decl* (i8*, i32)* @lookup_std_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fn_decl* @lookup_std_proto(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.fn_decl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fn_decl*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @hashstr(i8* %9, i32 %10)
  %12 = load i32, i32* @HASH_SIZE, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i64*, i64** @hash_tab, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store %struct.fn_decl* null, %struct.fn_decl** %3, align 8
  br label %58

23:                                               ; preds = %15
  %24 = load %struct.fn_decl*, %struct.fn_decl** @std_protos, align 8
  %25 = load i64*, i64** @hash_tab, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %24, i64 %29
  store %struct.fn_decl* %30, %struct.fn_decl** %8, align 8
  %31 = load %struct.fn_decl*, %struct.fn_decl** %8, align 8
  %32 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strlen(i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %23
  %39 = load %struct.fn_decl*, %struct.fn_decl** %8, align 8
  %40 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @strncmp(i32 %41, i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct.fn_decl*, %struct.fn_decl** %8, align 8
  store %struct.fn_decl* %47, %struct.fn_decl** %3, align 8
  br label %58

48:                                               ; preds = %38, %23
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @HASH_SIZE, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @gcc_assert(i32 %56)
  br label %15

58:                                               ; preds = %46, %22
  %59 = load %struct.fn_decl*, %struct.fn_decl** %3, align 8
  ret %struct.fn_decl* %59
}

declare dso_local i32 @hashstr(i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
