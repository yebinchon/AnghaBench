; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cifs_convert_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_netmisc.c_cifs_convert_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_convert_address(%struct.sockaddr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [13 x i8], align 1
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %13, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %14, align 8
  %19 = load i8*, i8** @AF_INET, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @cifs_inet_pton(i8* %19, i8* %20, i32 %21, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i8*, i8** @AF_INET, align 8
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 1, i32* %4, align 4
  br label %96

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @memchr(i8* %32, i8 signext 37, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  br label %46

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i64 [ %42, %37 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** @AF_INET6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @cifs_inet_pton(i8* %49, i8* %50, i32 %51, i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %96

60:                                               ; preds = %46
  %61 = load i8*, i8** @AF_INET6, align 8
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %94

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 12
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %66
  store i32 0, i32* %4, align 4
  br label %96

77:                                               ; preds = %73
  %78 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @memcpy(i8* %78, i8* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 %84
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %87 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %87, i32 0, i32 0
  %89 = call i32 @kstrtouint(i8* %86, i32 0, i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %77, %60
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %76, %58, %27
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @cifs_inet_pton(i8*, i8*, i32, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
