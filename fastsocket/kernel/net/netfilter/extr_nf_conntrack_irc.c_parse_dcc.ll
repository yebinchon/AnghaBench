; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_irc.c_parse_dcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_irc.c_parse_dcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i8**, i8**)* @parse_dcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dcc(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  br label %15

15:                                               ; preds = %27, %6
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 32
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -12
  %25 = icmp ugt i8* %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %7, align 4
  br label %80

27:                                               ; preds = %21
  br label %15

28:                                               ; preds = %15
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %14, align 8
  br label %30

30:                                               ; preds = %41, %28
  %31 = load i8*, i8** %14, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ule i8* %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** %14, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %14, align 8
  br label %30

44:                                               ; preds = %39, %30
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %14, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %44
  store i32 -1, i32* %7, align 4
  br label %80

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i8**, i8*** %12, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @simple_strtoul(i8* %57, i8** %8, i32 10)
  %59 = call i32 @cpu_to_be32(i32 %58)
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %71, %54
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp uge i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %7, align 4
  br label %80

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %61

74:                                               ; preds = %61
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @simple_strtoul(i8* %75, i8** %8, i32 10)
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i8**, i8*** %13, align 8
  store i8* %78, i8** %79, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %70, %53, %26
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
