; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf_update_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf_update_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%union.sctp_addr_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_asconf_update_ip(%struct.sctp_association* %0, %union.sctp_addr* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %union.sctp_addr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.sctp_addr_param, align 4
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %union.sctp_addr_param, align 4
  %15 = alloca %union.sctp_addr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sctp_af*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %23 = bitcast %struct.sockaddr* %22 to i8*
  store i8* %23, i8** %16, align 8
  store i32 0, i32* %21, align 4
  br label %24

24:                                               ; preds = %53, %5
  %25 = load i32, i32* %21, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i8*, i8** %16, align 8
  %30 = bitcast i8* %29 to %union.sctp_addr*
  store %union.sctp_addr* %30, %union.sctp_addr** %15, align 8
  %31 = load %union.sctp_addr*, %union.sctp_addr** %15, align 8
  %32 = bitcast %union.sctp_addr* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.sctp_af* @sctp_get_af_specific(i32 %34)
  store %struct.sctp_af* %35, %struct.sctp_af** %17, align 8
  %36 = load %struct.sctp_af*, %struct.sctp_af** %17, align 8
  %37 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %36, i32 0, i32 0
  %38 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %37, align 8
  %39 = load %union.sctp_addr*, %union.sctp_addr** %15, align 8
  %40 = call i32 %38(%union.sctp_addr* %39, %union.sctp_addr_param* %14)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %20, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %20, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %20, align 4
  %47 = load %struct.sctp_af*, %struct.sctp_af** %17, align 8
  %48 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %16, align 8
  br label %53

53:                                               ; preds = %28
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %21, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %58 = load %union.sctp_addr*, %union.sctp_addr** %8, align 8
  %59 = load i32, i32* %20, align 4
  %60 = call %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association* %57, %union.sctp_addr* %58, i32 %59)
  store %struct.sctp_chunk* %60, %struct.sctp_chunk** %13, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %62 = icmp ne %struct.sctp_chunk* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %112

64:                                               ; preds = %56
  %65 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %66 = bitcast %struct.sockaddr* %65 to i8*
  store i8* %66, i8** %16, align 8
  store i32 0, i32* %21, align 4
  br label %67

67:                                               ; preds = %107, %64
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %67
  %72 = load i8*, i8** %16, align 8
  %73 = bitcast i8* %72 to %union.sctp_addr*
  store %union.sctp_addr* %73, %union.sctp_addr** %15, align 8
  %74 = load %union.sctp_addr*, %union.sctp_addr** %15, align 8
  %75 = bitcast %union.sctp_addr* %74 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.sctp_af* @sctp_get_af_specific(i32 %77)
  store %struct.sctp_af* %78, %struct.sctp_af** %17, align 8
  %79 = load %struct.sctp_af*, %struct.sctp_af** %17, align 8
  %80 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %79, i32 0, i32 0
  %81 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %80, align 8
  %82 = load %union.sctp_addr*, %union.sctp_addr** %15, align 8
  %83 = call i32 %81(%union.sctp_addr* %82, %union.sctp_addr_param* %14)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %11, align 4
  %85 = bitcast %union.sctp_addr_param* %12 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @htons(i32 %89)
  %91 = bitcast %union.sctp_addr_param* %12 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %21, align 4
  %94 = bitcast %union.sctp_addr_param* %12 to i32*
  store i32 %93, i32* %94, align 4
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %95, i32 %96, %union.sctp_addr_param* %12)
  %98 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %98, i32 %99, %union.sctp_addr_param* %14)
  %101 = load %struct.sctp_af*, %struct.sctp_af** %17, align 8
  %102 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %71
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %67

110:                                              ; preds = %67
  %111 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  store %struct.sctp_chunk* %111, %struct.sctp_chunk** %6, align 8
  br label %112

112:                                              ; preds = %110, %63
  %113 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %113
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association*, %union.sctp_addr*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %union.sctp_addr_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
