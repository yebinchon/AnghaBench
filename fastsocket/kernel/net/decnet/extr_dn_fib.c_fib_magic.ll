; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_fib.c_fib_magic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_fib.c_fib_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_ifaddr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dn_fib_table = type { i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)*, i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)*, i32 }
%struct.rtmsg = type { i32, i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.nlmsghdr = type { i32, i32, i32, i64, i64 }
%struct.anon = type { %struct.nlmsghdr, %struct.rtmsg }
%struct.dn_kern_rta = type { i32, i32, i32*, i32*, i32*, i32, i32, i32 }

@RTN_UNICAST = common dso_local global i32 0, align 4
@RT_MIN_TABLE = common dso_local global i32 0, align 4
@RT_TABLE_LOCAL = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_APPEND = common dso_local global i32 0, align 4
@RTPROT_KERNEL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.dn_ifaddr*)* @fib_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib_magic(i32 %0, i32 %1, i32 %2, i32 %3, %struct.dn_ifaddr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_ifaddr*, align 8
  %11 = alloca %struct.dn_fib_table*, align 8
  %12 = alloca %struct.anon, align 8
  %13 = alloca %struct.dn_kern_rta, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dn_ifaddr* %4, %struct.dn_ifaddr** %10, align 8
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %15 = call i32 @memset(%struct.rtmsg* %14, i32 0, i32 48)
  %16 = bitcast %struct.dn_kern_rta* %13 to %struct.rtmsg*
  %17 = call i32 @memset(%struct.rtmsg* %16, i32 0, i32 48)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RTN_UNICAST, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @RT_MIN_TABLE, align 4
  %23 = call %struct.dn_fib_table* @dn_fib_get_table(i32 %22, i32 1)
  store %struct.dn_fib_table* %23, %struct.dn_fib_table** %11, align 8
  br label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @RT_TABLE_LOCAL, align 4
  %26 = call %struct.dn_fib_table* @dn_fib_get_table(i32 %25, i32 1)
  store %struct.dn_fib_table* %26, %struct.dn_fib_table** %11, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %29 = icmp eq %struct.dn_fib_table* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %105

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 0
  store i32 80, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @NLM_F_REQUEST, align 4
  %38 = load i32, i32* @NLM_F_CREATE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NLM_F_APPEND, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %43 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %45 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %50 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %52 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @RTPROT_KERNEL, align 4
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @RTN_LOCAL, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %31
  %63 = load i32, i32* @RT_SCOPE_LINK, align 4
  br label %66

64:                                               ; preds = %31
  %65 = load i32, i32* @RT_SCOPE_HOST, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %69 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %72 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.dn_kern_rta, %struct.dn_kern_rta* %13, i32 0, i32 4
  store i32* %8, i32** %73, align 8
  %74 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %10, align 8
  %75 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.dn_kern_rta, %struct.dn_kern_rta* %13, i32 0, i32 3
  store i32* %75, i32** %76, align 8
  %77 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %10, align 8
  %78 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.dn_kern_rta, %struct.dn_kern_rta* %13, i32 0, i32 2
  store i32* %82, i32** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RTM_NEWROUTE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %66
  %88 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %89 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %88, i32 0, i32 1
  %90 = load i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)*, i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)** %89, align 8
  %91 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %93 = bitcast %struct.dn_kern_rta* %13 to %struct.rtmsg*
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %95 = call i32 %90(%struct.dn_fib_table* %91, %struct.rtmsg* %92, %struct.rtmsg* %93, %struct.nlmsghdr* %94, i32* null)
  br label %105

96:                                               ; preds = %66
  %97 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %98 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %97, i32 0, i32 0
  %99 = load i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)*, i32 (%struct.dn_fib_table*, %struct.rtmsg*, %struct.rtmsg*, %struct.nlmsghdr*, i32*)** %98, align 8
  %100 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %102 = bitcast %struct.dn_kern_rta* %13 to %struct.rtmsg*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %104 = call i32 %99(%struct.dn_fib_table* %100, %struct.rtmsg* %101, %struct.rtmsg* %102, %struct.nlmsghdr* %103, i32* null)
  br label %105

105:                                              ; preds = %30, %96, %87
  ret void
}

declare dso_local i32 @memset(%struct.rtmsg*, i32, i32) #1

declare dso_local %struct.dn_fib_table* @dn_fib_get_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
