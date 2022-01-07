; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_Touch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_arch.c_Arch_Touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { i32 }

@ARCHIVE = common dso_local global i32 0, align 4
@MEMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%-12ld\00", align 1
@now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Arch_Touch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ar_hdr, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @ARCHIVE, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @Var_Value(i32 %7, i32* %8, i8** %5)
  %10 = load i32, i32* @MEMBER, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @Var_Value(i32 %10, i32* %11, i8** %6)
  %13 = call i32* @ArchFindMember(i32 %9, i32 %12, %struct.ar_hdr* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @free(i8* %16)
  %18 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @now, align 8
  %21 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = bitcast %struct.ar_hdr* %4 to i8*
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fwrite(i8* %25, i32 4, i32 1, i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fclose(i32* %28)
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32* @ArchFindMember(i32, i32, %struct.ar_hdr*, i8*) #1

declare dso_local i32 @Var_Value(i32, i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
