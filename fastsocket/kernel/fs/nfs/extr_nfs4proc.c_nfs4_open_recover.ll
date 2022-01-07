; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32 }
%struct.nfs4_state = type { i64, i64, i64, i32, i32, i32, i32 }

@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@NFS_O_RDWR_STATE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NFS_O_WRONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_RDONLY_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, %struct.nfs4_state*)* @nfs4_open_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_open_recover(%struct.nfs4_opendata* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  %8 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 6
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = call i32 (...) @smp_rmb()
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @NFS_O_RDWR_STATE, align 4
  %19 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %19, i32 0, i32 6
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %23 = load i32, i32* @FMODE_READ, align 4
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @nfs4_open_recover_helper(%struct.nfs4_opendata* %22, i32 %25, %struct.nfs4_state** %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %122

31:                                               ; preds = %17
  %32 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %34 = icmp ne %struct.nfs4_state* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ESTALE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %122

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %41 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i32, i32* @NFS_O_WRONLY_STATE, align 4
  %46 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %47 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %46, i32 0, i32 6
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %50 = load i32, i32* @FMODE_WRITE, align 4
  %51 = call i32 @nfs4_open_recover_helper(%struct.nfs4_opendata* %49, i32 %50, %struct.nfs4_state** %6)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %122

56:                                               ; preds = %44
  %57 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %58 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %59 = icmp ne %struct.nfs4_state* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @ESTALE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %122

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %66 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load i32, i32* @NFS_O_RDONLY_STATE, align 4
  %71 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %72 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %71, i32 0, i32 6
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %75 = load i32, i32* @FMODE_READ, align 4
  %76 = call i32 @nfs4_open_recover_helper(%struct.nfs4_opendata* %74, i32 %75, %struct.nfs4_state** %6)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %122

81:                                               ; preds = %69
  %82 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %83 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %84 = icmp ne %struct.nfs4_state* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @ESTALE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %122

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %91 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %92 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %91, i32 0, i32 6
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %97 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %96, i32 0, i32 5
  %98 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %99 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %98, i32 0, i32 4
  %100 = call i32 @nfs4_stateid_match(i32* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %95
  %103 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %104 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %103, i32 0, i32 3
  %105 = call i32 @write_seqlock(i32* %104)
  %106 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %107 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %108 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %107, i32 0, i32 6
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %113 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %112, i32 0, i32 5
  %114 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %115 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %114, i32 0, i32 4
  %116 = call i32 @nfs4_stateid_copy(i32* %113, i32* %115)
  br label %117

117:                                              ; preds = %111, %102
  %118 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %119 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %118, i32 0, i32 3
  %120 = call i32 @write_sequnlock(i32* %119)
  br label %121

121:                                              ; preds = %117, %95, %89
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %85, %79, %60, %54, %35, %29
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @nfs4_open_recover_helper(%struct.nfs4_opendata*, i32, %struct.nfs4_state**) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_stateid_match(i32*, i32*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
