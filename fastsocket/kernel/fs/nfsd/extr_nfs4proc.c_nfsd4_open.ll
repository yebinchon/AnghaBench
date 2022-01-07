; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd4_compoundres* }
%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, %struct.nfs4_replay }
%struct.nfs4_replay = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nfsd4_open = type { i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"NFSD: nfsd4_open filename %.*s op_stateowner %p\0A\00", align 1
@nfserr_inval = common dso_local global i64 0, align 8
@nfserr_replay_me = common dso_local global i64 0, align 8
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"nfsd4_open: replay failed restoring previous filehandle\0A\00", align 1
@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_no_grace = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"NFSD: unsupported OPEN claim type %d\0A\00", align 1
@nfserr_notsupp = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"NFSD: Invalid OPEN claim type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*)* @nfsd4_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_open(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_open*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfsd4_compoundres*, align 8
  %10 = alloca %struct.nfs4_replay*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %7, align 8
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %12 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, %struct.TYPE_10__* %22)
  %24 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @nfserr_inval, align 8
  store i64 %34, i64* %4, align 8
  br label %184

35:                                               ; preds = %28, %3
  %36 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %37 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %40, i32 0, i32 2
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @copy_clientid(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %35
  %47 = call i32 (...) @nfs4_lock_state()
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %49 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %48, i32 0, i32 0
  %50 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %49, align 8
  store %struct.nfsd4_compoundres* %50, %struct.nfsd4_compoundres** %9, align 8
  %51 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %9, align 8
  %52 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %51, i32 0, i32 0
  %53 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %54 = call i64 @nfsd4_process_open1(i32* %52, %struct.nfsd4_open* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @nfserr_replay_me, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %46
  %59 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %60 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store %struct.nfs4_replay* %62, %struct.nfs4_replay** %10, align 8
  %63 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %64 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %63, i32 0, i32 1
  %65 = call i32 @fh_put(%struct.TYPE_9__* %64)
  %66 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %67 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.nfs4_replay*, %struct.nfs4_replay** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %69, i32 0, i32 0
  %71 = call i32 @fh_copy_shallow(i32* %68, i32* %70)
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %73 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %74 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %73, i32 0, i32 1
  %75 = load i32, i32* @NFSD_MAY_NOP, align 4
  %76 = call i64 @fh_verify(%struct.svc_rqst* %72, %struct.TYPE_9__* %74, i32 0, i32 %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %58
  %80 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %83

81:                                               ; preds = %58
  %82 = load i64, i64* @nfserr_replay_me, align 8
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %46
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %166

88:                                               ; preds = %84
  %89 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %90 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %91 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %92 = call i64 @nfsd4_check_open_attributes(%struct.svc_rqst* %89, %struct.nfsd4_compound_state* %90, %struct.nfsd4_open* %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %166

96:                                               ; preds = %88
  %97 = load i64, i64* @nfserr_grace, align 8
  store i64 %97, i64* %8, align 8
  %98 = call i64 (...) @locks_in_grace()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %102 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %166

106:                                              ; preds = %100, %96
  %107 = load i64, i64* @nfserr_no_grace, align 8
  store i64 %107, i64* %8, align 8
  %108 = call i64 (...) @locks_in_grace()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %112 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %166

116:                                              ; preds = %110, %106
  %117 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %118 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %154 [
    i32 131, label %120
    i32 129, label %120
    i32 128, label %130
    i32 130, label %144
  ]

120:                                              ; preds = %116, %116
  %121 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %122 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %123 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %122, i32 0, i32 1
  %124 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %125 = call i64 @do_open_lookup(%struct.svc_rqst* %121, %struct.TYPE_9__* %123, %struct.nfsd4_open* %124)
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %166

129:                                              ; preds = %120
  br label %160

130:                                              ; preds = %116
  %131 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %132 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %136 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %137 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %136, i32 0, i32 1
  %138 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %139 = call i64 @do_open_fhandle(%struct.svc_rqst* %135, %struct.TYPE_9__* %137, %struct.nfsd4_open* %138)
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %166

143:                                              ; preds = %130
  br label %160

144:                                              ; preds = %116
  %145 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %146 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %150 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i64, i64* @nfserr_notsupp, align 8
  store i64 %153, i64* %8, align 8
  br label %166

154:                                              ; preds = %116
  %155 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %156 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i64, i64* @nfserr_inval, align 8
  store i64 %159, i64* %8, align 8
  br label %166

160:                                              ; preds = %143, %129
  %161 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %162 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %163 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %162, i32 0, i32 1
  %164 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %165 = call i64 @nfsd4_process_open2(%struct.svc_rqst* %161, %struct.TYPE_9__* %163, %struct.nfsd4_open* %164)
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %160, %154, %144, %142, %128, %115, %105, %95, %87
  %167 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %168 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = icmp ne %struct.TYPE_10__* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %173 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = call i32 @nfs4_get_stateowner(%struct.TYPE_10__* %174)
  %176 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %177 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %180 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %179, i32 0, i32 0
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %180, align 8
  br label %181

181:                                              ; preds = %171, %166
  %182 = call i32 (...) @nfs4_unlock_state()
  %183 = load i64, i64* %8, align 8
  store i64 %183, i64* %4, align 8
  br label %184

184:                                              ; preds = %181, %33
  %185 = load i64, i64* %4, align 8
  ret i64 %185
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @copy_clientid(i32*, i32) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i64 @nfsd4_process_open1(i32*, %struct.nfsd4_open*) #1

declare dso_local i32 @fh_put(%struct.TYPE_9__*) #1

declare dso_local i32 @fh_copy_shallow(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @nfsd4_check_open_attributes(%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*) #1

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i64 @do_open_lookup(%struct.svc_rqst*, %struct.TYPE_9__*, %struct.nfsd4_open*) #1

declare dso_local i64 @do_open_fhandle(%struct.svc_rqst*, %struct.TYPE_9__*, %struct.nfsd4_open*) #1

declare dso_local i64 @nfsd4_process_open2(%struct.svc_rqst*, %struct.TYPE_9__*, %struct.nfsd4_open*) #1

declare dso_local i32 @nfs4_get_stateowner(%struct.TYPE_10__*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
