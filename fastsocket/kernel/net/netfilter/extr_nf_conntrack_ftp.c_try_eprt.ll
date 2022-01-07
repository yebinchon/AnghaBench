; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_try_eprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_try_eprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"EPRT: too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"try_eprt: invalid delimitter.\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"EPRT: invalid protocol number.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EPRT: Got %c%c%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EPRT: Got IP address!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.nf_conntrack_man*, i8)* @try_eprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_eprt(i8* %0, i64 %1, %struct.nf_conntrack_man* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nf_conntrack_man*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nf_conntrack_man* %2, %struct.nf_conntrack_man** %8, align 8
  store i8 %3, i8* %9, align 1
  %13 = load i64, i64* %7, align 8
  %14 = icmp ule i64 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %142

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %10, align 1
  %21 = load i8, i8* %10, align 1
  %22 = call i64 @isdigit(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = load i8, i8* %10, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %26, 33
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sgt i32 %30, 126
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %10, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %28, %24, %17
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %142

42:                                               ; preds = %32
  %43 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PF_INET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 49
  br i1 %53, label %66, label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %56 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PF_INET6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 50
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %48
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %142

68:                                               ; preds = %60, %54
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* %10, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %74, i32 %76)
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 49
  br i1 %82, label %83, label %113

83:                                               ; preds = %68
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %86, 3
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %89 = load i8, i8* %10, align 1
  %90 = call i32 @try_number(i8* %85, i64 %87, i32* %88, i32 4, i8 signext 46, i8 signext %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %83
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = shl i32 %95, 24
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 8
  %104 = or i32 %100, %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %104, %106
  %108 = call i32 @htonl(i32 %107)
  %109 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %110 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %93, %83
  br label %125

113:                                              ; preds = %68
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i64, i64* %7, align 8
  %117 = sub i64 %116, 3
  %118 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %119 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.in6_addr*
  %123 = load i8, i8* %10, align 1
  %124 = call i32 @get_ipv6_addr(i8* %115, i64 %117, %struct.in6_addr* %122, i8 signext %123)
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %113, %112
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %142

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 3, %132
  %134 = add nsw i32 %133, 1
  %135 = load i64, i64* %7, align 8
  %136 = load i8, i8* %10, align 1
  %137 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %138 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = call i32 @get_port(i8* %131, i32 %134, i64 %135, i8 signext %136, i32* %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %129, %128, %66, %40, %15
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @try_number(i8*, i64, i32*, i32, i8 signext, i8 signext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @get_ipv6_addr(i8*, i64, %struct.in6_addr*, i8 signext) #1

declare dso_local i32 @get_port(i8*, i32, i64, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
