; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_sumversion.c_md4_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_sumversion.c_md4_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md4_ctx = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md4_ctx*, i8*, i32)* @md4_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md4_update(%struct.md4_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.md4_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.md4_ctx* %0, %struct.md4_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 63
  %12 = sext i32 %11 to i64
  %13 = sub i64 8, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = sub i64 8, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  br label %79

34:                                               ; preds = %3
  %35 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = sub i64 8, %39
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  %45 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %46 = call i32 @md4_transform_helper(%struct.md4_ctx* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %58, %34
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp uge i64 %56, 8
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @memcpy(i8* %61, i8* %62, i32 8)
  %64 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %65 = call i32 @md4_transform_helper(%struct.md4_ctx* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8* %67, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = sub i64 %69, 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.md4_ctx*, %struct.md4_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %23
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @md4_transform_helper(%struct.md4_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
