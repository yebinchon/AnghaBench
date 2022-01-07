; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_stateid_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_stateid_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.svc_fh }
%struct.svc_fh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.nfs4_stateid = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs4_delegation = type { i32, i32, i32 }

@nfserr_grace = common dso_local global i64 0, align 8
@HAS_SESSION = common dso_local global i32 0, align 4
@nfserr_stale_stateid = common dso_local global i64 0, align 8
@nfserr_expired = common dso_local global i64 0, align 8
@nfserr_bad_stateid = common dso_local global i64 0, align 8
@RD_STATE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state* %0, i32* %1, i32 %2, %struct.file** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file**, align 8
  %10 = alloca %struct.nfs4_stateid*, align 8
  %11 = alloca %struct.nfs4_delegation*, align 8
  %12 = alloca %struct.svc_fh*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file** %3, %struct.file*** %9, align 8
  store %struct.nfs4_stateid* null, %struct.nfs4_stateid** %10, align 8
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %11, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %15, i32 0, i32 0
  store %struct.svc_fh* %16, %struct.svc_fh** %12, align 8
  %17 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %13, align 8
  %22 = load %struct.file**, %struct.file*** %9, align 8
  %23 = icmp ne %struct.file** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* null, %struct.file** %25, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = load %struct.inode*, %struct.inode** %13, align 8
  %28 = call i64 @grace_disallows_io(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @nfserr_grace, align 8
  store i64 %31, i64* %5, align 8
  br label %177

32:                                               ; preds = %26
  %33 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %34 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @HAS_SESSION, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @ZERO_STATEID(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @ONE_STATEID(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %40
  %49 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @check_special_stateids(%struct.svc_fh* %49, i32* %50, i32 %51)
  store i64 %52, i64* %5, align 8
  br label %177

53:                                               ; preds = %44
  %54 = load i64, i64* @nfserr_stale_stateid, align 8
  store i64 %54, i64* %14, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @STALE_STATEID(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %175

59:                                               ; preds = %53
  %60 = load i64, i64* @nfserr_expired, align 8
  store i64 %60, i64* %14, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @is_delegation_stateid(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call %struct.nfs4_delegation* @find_delegation_stateid(%struct.inode* %65, i32* %66)
  store %struct.nfs4_delegation* %67, %struct.nfs4_delegation** %11, align 8
  %68 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %69 = icmp ne %struct.nfs4_delegation* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %175

71:                                               ; preds = %64
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %74 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %73, i32 0, i32 2
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @check_stateid_generation(i32* %72, i32* %74, i32 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %175

80:                                               ; preds = %71
  %81 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @nfs4_check_delegmode(%struct.nfs4_delegation* %81, i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %175

87:                                               ; preds = %80
  %88 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %89 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @renew_client(i32 %90)
  %92 = load %struct.file**, %struct.file*** %9, align 8
  %93 = icmp ne %struct.file** %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %96 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.file* @find_readable_file(i32 %97)
  %99 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* %98, %struct.file** %99, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.file**, %struct.file*** %9, align 8
  %102 = load %struct.file*, %struct.file** %101, align 8
  %103 = icmp ne %struct.file* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  br label %173

107:                                              ; preds = %59
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call %struct.nfs4_stateid* @find_stateid(i32* %108, i32 %109)
  store %struct.nfs4_stateid* %110, %struct.nfs4_stateid** %10, align 8
  %111 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %112 = icmp ne %struct.nfs4_stateid* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %175

114:                                              ; preds = %107
  %115 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %115, i64* %14, align 8
  %116 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %117 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %118 = call i64 @nfs4_check_fh(%struct.svc_fh* %116, %struct.nfs4_stateid* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %175

121:                                              ; preds = %114
  %122 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %123 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %175

129:                                              ; preds = %121
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %132 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %131, i32 0, i32 2
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @check_stateid_generation(i32* %130, i32* %132, i32 %133)
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %175

138:                                              ; preds = %129
  %139 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @nfs4_check_openmode(%struct.nfs4_stateid* %139, i32 %140)
  store i64 %141, i64* %14, align 8
  %142 = load i64, i64* %14, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %175

145:                                              ; preds = %138
  %146 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %147 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @renew_client(i32 %150)
  %152 = load %struct.file**, %struct.file*** %9, align 8
  %153 = icmp ne %struct.file** %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %145
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @RD_STATE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %161 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call %struct.file* @find_readable_file(i32 %162)
  %164 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* %163, %struct.file** %164, align 8
  br label %171

165:                                              ; preds = %154
  %166 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %10, align 8
  %167 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.file* @find_writeable_file(i32 %168)
  %170 = load %struct.file**, %struct.file*** %9, align 8
  store %struct.file* %169, %struct.file** %170, align 8
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171, %145
  br label %173

173:                                              ; preds = %172, %100
  %174 = load i64, i64* @nfs_ok, align 8
  store i64 %174, i64* %14, align 8
  br label %175

175:                                              ; preds = %173, %144, %137, %128, %120, %113, %86, %79, %70, %58
  %176 = load i64, i64* %14, align 8
  store i64 %176, i64* %5, align 8
  br label %177

177:                                              ; preds = %175, %48, %30
  %178 = load i64, i64* %5, align 8
  ret i64 %178
}

declare dso_local i64 @grace_disallows_io(%struct.inode*) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i64 @ZERO_STATEID(i32*) #1

declare dso_local i64 @ONE_STATEID(i32*) #1

declare dso_local i64 @check_special_stateids(%struct.svc_fh*, i32*, i32) #1

declare dso_local i64 @STALE_STATEID(i32*) #1

declare dso_local i64 @is_delegation_stateid(i32*) #1

declare dso_local %struct.nfs4_delegation* @find_delegation_stateid(%struct.inode*, i32*) #1

declare dso_local i64 @check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i64 @nfs4_check_delegmode(%struct.nfs4_delegation*, i32) #1

declare dso_local i32 @renew_client(i32) #1

declare dso_local %struct.file* @find_readable_file(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.nfs4_stateid* @find_stateid(i32*, i32) #1

declare dso_local i64 @nfs4_check_fh(%struct.svc_fh*, %struct.nfs4_stateid*) #1

declare dso_local i64 @nfs4_check_openmode(%struct.nfs4_stateid*, i32) #1

declare dso_local %struct.file* @find_writeable_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
