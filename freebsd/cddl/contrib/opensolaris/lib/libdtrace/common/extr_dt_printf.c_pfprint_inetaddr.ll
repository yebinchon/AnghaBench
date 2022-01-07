; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_inetaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_inetaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8* }

@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i64, i32)* @pfprint_inetaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_inetaddr(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.hostent*, align 8
  %18 = alloca %struct.hostent, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i64, i64* %14, align 8
  %25 = add i64 %24, 1
  %26 = call i8* @alloca(i64 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @bcopy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %16, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %16, align 8
  %39 = call i32* @strchr(i8* %38, i8 signext 58)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %7
  %42 = load i32, i32* @AF_INET, align 4
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @inet_pton(i32 %42, i8* %43, i8* %30)
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i32, i32* @NS_INADDRSZ, align 4
  %48 = load i32, i32* @AF_INET, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %50 = call %struct.hostent* (i8*, i32, i32, %struct.hostent*, i8*, i32, ...) @gethostbyaddr_r(i8* %30, i32 %47, i32 %48, %struct.hostent* %18, i8* %49, i32 1024, %struct.hostent** %17, i32* %22)
  %51 = icmp ugt %struct.hostent* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.hostent*, %struct.hostent** %17, align 8
  %57 = getelementptr inbounds %struct.hostent, %struct.hostent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @dt_printf(i32* %53, i32* %54, i8* %55, i8* %58)
  store i32 %59, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %87

60:                                               ; preds = %46
  br label %81

61:                                               ; preds = %41, %7
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = call i32 @inet_pton(i32 %62, i8* %63, i8* %30)
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %68 = load i32, i32* @AF_INET6, align 4
  %69 = call %struct.hostent* @getipnodebyaddr(i8* %30, i32 %67, i32 %68, i32* %22)
  store %struct.hostent* %69, %struct.hostent** %17, align 8
  %70 = icmp ne %struct.hostent* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.hostent*, %struct.hostent** %17, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @dt_printf(i32* %72, i32* %73, i8* %74, i8* %77)
  store i32 %78, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %87

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @dt_printf(i32* %82, i32* %83, i8* %84, i8* %85)
  store i32 %86, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %87

87:                                               ; preds = %81, %71, %52
  %88 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i8* @alloca(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i32, i8*, i8*) #1

declare dso_local %struct.hostent* @gethostbyaddr_r(i8*, i32, i32, %struct.hostent*, i8*, i32, ...) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, i8*) #1

declare dso_local %struct.hostent* @getipnodebyaddr(i8*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
